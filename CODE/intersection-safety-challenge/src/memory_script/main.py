import os

from moviepy.editor import VideoFileClip

BASELINE_MB_PER_SECOND = 1
# constant var for mb baseline


def get_file_size(file_path):
    try:
        bytes_size = os.path.getsize(file_path)
    except OSError as e:
        return str(e)

    mb_size = bytes_size / (1024 * 1024)
    return mb_size


def get_video_duration(file_path):
    try:
        clip = VideoFileClip(file_path)
        video_duration = clip.reader.nframes / clip.fps
    except Exception as e:
        return str(e)

    return video_duration


def tag_file(mb_size, video_duration):
    expected_size = video_duration * BASELINE_MB_PER_SECOND
    percentage_difference = abs(mb_size - expected_size) / (expected_size * 100)

    if percentage_difference <= 5:
        return "Good"
    elif percentage_difference <= 20:
        return "Bad"
    else:
        return "Ugly"


def main():
    directory_path = input("Working Directory: ")

    for root, dirs, files in os.walk(directory_path):
        for file_name in files:
            if file_name.endswith(".mp4"):
                file_path = os.path.join(root, file_name)

                mb_size = get_file_size(file_path)
                if isinstance(mb_size, str):
                    print(f"Error for file {file_path}: {mb_size}")
                    continue

                video_duration = get_video_duration(file_path)
                if isinstance(video_duration, str):
                    print(f"Error for file {file_path}: {video_duration}")
                    continue

                tag = tag_file(mb_size, video_duration)

                output = f"""
                ------------------------------------------------------------
                File path: {file_path}
                File size in MB: {mb_size}
                Video duration in seconds: {video_duration}
                File tag: {tag}
                ------------------------------------------------------------
                """
                print(output)


if __name__ == "__main__":
    main()
