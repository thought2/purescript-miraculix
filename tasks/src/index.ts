import { command, positional, binary, run } from "cmd-ts";

const cat = command({
  name: "cat",
  args: {
    path: positional(),
  },
  async handler({ path }) {
    console.log(123);
  },
});

["cat"].forEach((c) =>
  FileSystem.writeFile(join(__dirname, `../../bin/${c}`), "")
);

run(binary(cat), process.argv);
