import face_recognition
import cv2
import numpy as np
import pandas as pd
import os
import time


def recognize(video_capture, known_face_encodings, known_face_names):
    # Grab a single frame of video
    ret, frame = video_capture.read()

    # Resize frame of video to 1/4 size for faster face recognition processing
    small_frame = cv2.resize(frame, (0, 0), fx=0.10, fy=0.10)

    # Convert the image from BGR color (which OpenCV uses) to RGB color (which face_recognition uses)
    rgb_small_frame = small_frame[:, :, ::-1]

    # Find all the faces and face encodings in the current frame of video
    face_locations = face_recognition.face_locations(rgb_small_frame)
    face_encodings = face_recognition.face_encodings(rgb_small_frame, face_locations)

    face_names = []
    for face_encoding in face_encodings:
        # See if the face is a match for the known face(s)
        matches = face_recognition.compare_faces(known_face_encodings, face_encoding, 0.5)
        name = "Unknown"

        # If a match was found in known_face_encodings, just use the first one.
        if True in matches:
            first_match_index = matches.index(True)
            name = known_face_names[first_match_index]

        face_names.append(name)

    # Display the results
    for (top, right, bottom, left), name in zip(face_locations, face_names):
        # Scale back up face locations since the frame we detected in was scaled to 1/4 size
        top *= 10
        right *= 10
        bottom *= 10
        left *= 10

        # Draw a box around the face
        cv2.rectangle(frame, (left, top), (right, bottom), (0, 0, 255), 2)

        # Draw a label with a name below the face
        cv2.rectangle(frame, (left, bottom - 35), (right, bottom), (0, 0, 255), cv2.FILLED)
        font = cv2.FONT_HERSHEY_DUPLEX
        cv2.putText(frame, name, (left + 6, bottom - 6), font, 1.0, (255, 255, 255), 1)

    # Display the resulting image
    cv2.imshow('Video', frame)

    return face_names


def face_search():
    start_time = time.time()

    # Get a reference to webcam #0 (the default one)
    video_capture = cv2.VideoCapture(0)

    df = pd.read_csv("datasets/labels.csv", delimiter=',')

    known_face_encodings = []
    known_face_names = []

    for basename, label in df.values:
        if os.path.isfile("datasets/vectorized/%s.npy" % basename):
            face_encoding = np.load("datasets/vectorized/%s.npy" % basename)
            print("Loaded", basename)
        else:
            image = face_recognition.load_image_file("datasets/raw/%s.jpg" % basename)
            face_encoding = face_recognition.face_encodings(image)[0]
            np.save("datasets/vectorized/%s.npy" % basename, face_encoding)

        known_face_encodings.append(face_encoding)
        known_face_names.append(label)


    names = []

    while len(names) == 0:
        names = recognize(video_capture, known_face_encodings, known_face_names)
        print(names)

        # Hit 'q' on the keyboard to quit!
        if cv2.waitKey(1) & 0xFF == ord('q') or time.time() - start_time >= 5:
            break

    # Release handle to the webcam
    video_capture.release()

    return names

if __name__ == "__main__":
    while True:
        face_search()
        if cv2.waitKey(1) == ord('q'):
            break
    
    cv2.destroyAllWindows()

