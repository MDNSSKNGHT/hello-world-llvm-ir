target triple = "x86_64-pc-linux-gnu"

@.str = constant [14 x i8] c"Hello, World\0A\00", align 1

define i32 @main() #0 {
  call i32 (i8*, ...) @printf(i8* getelementptr ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #1
