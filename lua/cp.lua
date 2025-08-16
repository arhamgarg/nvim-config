function CompileAndRun()
    vim.cmd("w")

    local cmd = "!g++ -std=c++17 -O2 -Wall -Wextra -Wshadow -Wconversion main.cpp -o main && ./main < input.txt > output.txt"
    vim.cmd(cmd)

    local output_buf = vim.fn.bufnr("output.txt")
    if output_buf ~= -1 then
        vim.cmd("checktime")
    end
end

vim.keymap.set("n", " r", CompileAndRun)

function CPLayout()
    vim.cmd("e main.cpp")
    vim.cmd("vsplit input.txt")
    vim.cmd("split output.txt")
end

vim.keymap.set("n", " l", CPLayout)
