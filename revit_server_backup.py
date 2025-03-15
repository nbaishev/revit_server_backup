import os

REVIT_SERVER_PATH="C:\\ProgramData\\Autodesk\\Revit Server 2024\\Projects"
FILE_PATH="C:\\scripts\\revit_server_projects.txt"


def list_folders(path):
    try:
        folders = []
        for root, dirs, _ in os.walk(path):
            for folder in dirs:
                if ".rvt" in folder:
                    folders.append(os.path.join(root, folder))
        return folders
    except FileNotFoundError:
        print("Path not found")
        return []
    except PermissionError:
        print("No permission")
        return []


def save_in_file(folders):
    with open(FILE_PATH, "w", encoding="utf-8") as file:
        for folder in folders:
            file.write(folder.strip().replace(REVIT_SERVER_PATH, "")[1:] + "\n")


if __name__ == "__main__":
    folders = list_folders(REVIT_SERVER_PATH)
    save_in_file(folders)
