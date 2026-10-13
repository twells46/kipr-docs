# TODO

## Dropped drafts

These pages were removed from `content/` because they were drafts or placeholders.
Recreate them with `hugo new content <path>/index.md` when there is real content to add.

- **Programming problems** (`content/debugging/programming/`)
  - Had no content, only a placeholder title and description.
  - Fill in: common compile errors and how to read them, and a pointer for people who are new to C.
- **Getting started** (`content/docs/getting_started/`)
  - Had three one-sentence sections: install the KIPR software, verify the installation, create your first program.
  - Fill in: what to install and where to get it, how to connect to the controller for the first time, and a first program walkthrough.
- **Robot programs** (`content/docs/programming/`, section)
  - Had a one-line intro promising the project structure and workflow for robot programs.
  - Fill in: how users and projects are organized in the IDE.
- **Create a robot program** (`content/docs/programming/creating_programs/`)
  - Was not marked as a draft, but sat under the draft section above and held generic filler.
  - Had three sections: create the project directory, add the source file, build the program.
  - Fill in: the real steps in the KIPR IDE, with screenshots.

## Gaps in published pages

- **Camera problems**: no page yet. It was on the original list of symptoms to cover.
- **Programs won't run** (`content/debugging/runtime_failure/`): only covers recompiling. Needs the other causes and a flowchart.
- **Motors, servos, or sensors don't work** (`content/debugging/peripheral_failures/`): no flowchart.
- **Back up and restore programs** (`content/docs/backup_programs/`): the Method 2 restore steps have no screenshot. Sources may be in `image-src/docs/backup_programs/new_ide_user/`.
- **Update WombatOS** (`content/docs/firmware_update/`): says there are several update methods but only documents USB.

## Housekeeping

- Sort through `image-src/` and delete what is no longer needed.
- Add spell checking (Harper) and external link checking to `just check`; neither tool has a CLI in the dev container yet.
- Set up CI to run `just check` on pull requests.
