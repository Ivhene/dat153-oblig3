.class public Lcom/android/dx/command/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final USAGE_MESSAGE:Ljava/lang/String; = "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 81
    const-string v0, "--"

    const/4 v1, 0x0

    .line 82
    .local v1, "gotCmd":Z
    const/4 v2, 0x0

    .line 85
    .local v2, "showUsage":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, p0

    if-ge v3, v4, :cond_a

    .line 86
    aget-object v4, p0, v3

    .line 87
    .local v4, "arg":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    const/4 v1, 0x1

    .line 94
    const-string v5, "--dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    invoke-static {p0, v3}, Lcom/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->main([Ljava/lang/String;)V

    .line 96
    goto/16 :goto_2

    .line 97
    :cond_1
    const-string v5, "--dump"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    invoke-static {p0, v3}, Lcom/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/command/dump/Main;->main([Ljava/lang/String;)V

    .line 99
    goto/16 :goto_2

    .line 100
    :cond_2
    const-string v5, "--annotool"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    nop

    .line 102
    invoke-static {p0, v3}, Lcom/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/android/dx/command/annotool/Main;->main([Ljava/lang/String;)V

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const-string v5, "--find-usages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    invoke-static {p0, v3}, Lcom/android/dx/command/Main;->without([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/command/findusages/Main;->main([Ljava/lang/String;)V

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    const-string v5, "--version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 108
    invoke-static {}, Lcom/android/dx/command/Main;->version()V

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const-string v5, "--help"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lcom/android/dx/command/UsageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_6

    .line 111
    const/4 v0, 0x1

    .line 112
    .end local v2    # "showUsage":Z
    .local v0, "showUsage":Z
    move v2, v0

    goto :goto_2

    .line 114
    .end local v0    # "showUsage":Z
    .restart local v2    # "showUsage":Z
    :cond_6
    const/4 v1, 0x0

    .line 85
    .end local v4    # "arg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .restart local v4    # "arg":Ljava/lang/String;
    :cond_7
    :goto_1
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x1

    .line 90
    .end local v2    # "showUsage":Z
    .restart local v0    # "showUsage":Z
    move v2, v0

    goto :goto_2

    .line 123
    .end local v0    # "showUsage":Z
    .end local v3    # "i":I
    .end local v4    # "arg":Ljava/lang/String;
    .restart local v2    # "showUsage":Z
    :catchall_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "\nUNEXPECTED TOP-LEVEL ERROR:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    instance-of v3, v0, Ljava/lang/NoClassDefFoundError;

    if-nez v3, :cond_8

    instance-of v3, v0, Ljava/lang/NoSuchMethodError;

    if-eqz v3, :cond_9

    .line 128
    :cond_8
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Note: You may be using an incompatible virtual machine or class library.\n(This program is known to be incompatible with recent releases of GCJ.)"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :cond_9
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    .line 119
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "\nUNEXPECTED TOP-LEVEL EXCEPTION:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 122
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    goto :goto_2

    .line 117
    :catch_1
    move-exception v0

    .line 118
    .local v0, "ex":Lcom/android/dx/command/UsageException;
    const/4 v2, 0x1

    .line 135
    .end local v0    # "ex":Lcom/android/dx/command/UsageException;
    :cond_a
    :goto_2
    nop

    .line 137
    :goto_3
    if-nez v1, :cond_b

    .line 138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "error: no command specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x1

    .line 142
    :cond_b
    if-eqz v2, :cond_c

    .line 143
    invoke-static {}, Lcom/android/dx/command/Main;->usage()V

    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 146
    :cond_c
    return-void
.end method

.method private static usage()V
    .locals 2

    .line 160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private static version()V
    .locals 2

    .line 152
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "dx version 1.16"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 154
    return-void
.end method

.method private static without([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p0, "orig"    # [Ljava/lang/String;
    .param p1, "n"    # I

    .line 172
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 173
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    .line 174
    .local v1, "newa":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    return-object v1
.end method
