.class public Lscenelib/annotations/tools/Anncat;
.super Ljava/lang/Object;
.source "Anncat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;

    .line 42
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 43
    aget-object v0, p0, v1

    const-string v3, "--help"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lscenelib/annotations/tools/Anncat;->usage()V

    .line 45
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 52
    .local v0, "idx":I
    :try_start_0
    new-instance v3, Lscenelib/annotations/el/AScene;

    invoke-direct {v3}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 56
    .local v3, "theScene":Lscenelib/annotations/el/AScene;
    :goto_1
    array-length v4, p0
    :try_end_0
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lscenelib/annotations/el/DefException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "--class"

    const-string v6, "--index"

    const-string v7, "..."

    const-string v8, "Finished."

    if-ge v0, v4, :cond_8

    :try_start_1
    aget-object v4, p0, v0

    const-string v9, "--out"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 57
    aget-object v4, p0, v0

    const-string v9, "--javap"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    array-length v4, p0

    if-ge v0, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-static {v4}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 60
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "idx":I
    .local v4, "idx":I
    aget-object v0, p0, v0

    .line 61
    .local v0, "infile":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading javap file "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    invoke-static {v0, v3}, Lscenelib/annotations/io/JavapParser;->parse(Ljava/lang/String;Lscenelib/annotations/el/AScene;)V

    .line 63
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    .end local v0    # "infile":Ljava/lang/String;
    move v0, v4

    goto :goto_1

    .end local v4    # "idx":I
    .local v0, "idx":I
    :cond_3
    aget-object v4, p0, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    array-length v4, p0

    if-ge v0, v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-static {v4}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 67
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "idx":I
    .restart local v4    # "idx":I
    aget-object v0, p0, v0

    .line 68
    .local v0, "infile":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading index file "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    invoke-static {v0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 70
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    .end local v0    # "infile":Ljava/lang/String;
    move v0, v4

    goto/16 :goto_1

    .end local v4    # "idx":I
    .local v0, "idx":I
    :cond_5
    aget-object v4, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    array-length v4, p0

    if-ge v0, v4, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    invoke-static {v4}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 74
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "idx":I
    .restart local v4    # "idx":I
    aget-object v0, p0, v0

    .line 75
    .local v0, "infile":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading class file "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-static {v3, v0}, Lscenelib/annotations/io/classfile/ClassFileReader;->read(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V

    .line 77
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    .end local v0    # "infile":Ljava/lang/String;
    move v0, v4

    goto/16 :goto_1

    .line 79
    .end local v4    # "idx":I
    .local v0, "idx":I
    :cond_7
    invoke-static {v1}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    goto/16 :goto_1

    .line 84
    :cond_8
    array-length v4, p0

    if-ne v0, v4, :cond_9

    .line 85
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Writing index file to standard output..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v3, v4}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V

    .line 87
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 89
    :cond_9
    add-int/2addr v0, v2

    .line 90
    array-length v4, p0

    if-ge v0, v4, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    invoke-static {v4}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 91
    aget-object v4, p0, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 92
    add-int/2addr v0, v2

    .line 93
    array-length v4, p0

    if-ge v0, v4, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    move v4, v1

    :goto_6
    invoke-static {v4}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 94
    aget-object v4, p0, v0

    .line 95
    .local v4, "outfile":Ljava/lang/String;
    add-int/2addr v0, v2

    .line 96
    array-length v5, p0

    if-ne v0, v5, :cond_c

    move v5, v2

    goto :goto_7

    :cond_c
    move v5, v1

    :goto_7
    invoke-static {v5}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 97
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Writing index file to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V

    .line 99
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    .end local v4    # "outfile":Ljava/lang/String;
    goto/16 :goto_e

    :cond_d
    aget-object v4, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 101
    add-int/2addr v0, v2

    .line 102
    array-length v4, p0

    if-ge v0, v4, :cond_e

    move v4, v2

    goto :goto_8

    :cond_e
    move v4, v1

    :goto_8
    invoke-static {v4}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 104
    aget-object v4, p0, v0

    const-string v5, "--overwrite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 105
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Overwrite mode enabled."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    const/4 v4, 0x1

    .line 107
    .local v4, "overwrite":Z
    add-int/lit8 v0, v0, 0x1

    .line 108
    array-length v5, p0

    if-ge v0, v5, :cond_f

    move v5, v2

    goto :goto_9

    :cond_f
    move v5, v1

    :goto_9
    invoke-static {v5}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    goto :goto_a

    .line 110
    .end local v4    # "overwrite":Z
    :cond_10
    const/4 v4, 0x0

    .line 112
    .restart local v4    # "overwrite":Z
    :goto_a
    aget-object v5, p0, v0

    .line 113
    .local v5, "origfile":Ljava/lang/String;
    add-int/2addr v0, v2

    .line 114
    array-length v6, p0

    if-ge v0, v6, :cond_13

    .line 115
    aget-object v6, p0, v0

    const-string v9, "--to"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 117
    array-length v6, p0

    if-ge v0, v6, :cond_11

    move v6, v2

    goto :goto_b

    :cond_11
    move v6, v1

    :goto_b
    invoke-static {v6}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 118
    aget-object v6, p0, v0

    .line 119
    .local v6, "outfile":Ljava/lang/String;
    add-int/2addr v0, v2

    .line 120
    array-length v9, p0

    if-ne v0, v9, :cond_12

    move v9, v2

    goto :goto_c

    :cond_12
    move v9, v1

    :goto_c
    invoke-static {v9}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V

    .line 121
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading original class file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "and writing annotated version to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7, v9, v4}, Lscenelib/annotations/io/classfile/ClassFileWriter;->insert(Lscenelib/annotations/el/AScene;Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 124
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    .end local v6    # "outfile":Ljava/lang/String;
    goto :goto_d

    .line 126
    :cond_13
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rewriting class file "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with annotations..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    invoke-static {v3, v5, v4}, Lscenelib/annotations/io/classfile/ClassFileWriter;->insert(Lscenelib/annotations/el/AScene;Ljava/lang/String;Z)V

    .line 128
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    .end local v4    # "overwrite":Z
    .end local v5    # "origfile":Ljava/lang/String;
    :goto_d
    goto :goto_e

    .line 131
    :cond_14
    invoke-static {v1}, Lscenelib/annotations/tools/Anncat;->usageAssert(Z)V
    :try_end_1
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lscenelib/annotations/el/DefException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    .line 141
    .end local v0    # "idx":I
    .end local v3    # "theScene":Lscenelib/annotations/el/AScene;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lscenelib/annotations/el/DefException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Lscenelib/annotations/el/DefException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 143
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_f

    .line 138
    .end local v0    # "e":Lscenelib/annotations/el/DefException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 140
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 135
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Lorg/checkerframework/org/plumelib/util/FileIOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/plumelib/util/FileIOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 137
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 144
    .end local v0    # "e":Lorg/checkerframework/org/plumelib/util/FileIOException;
    :goto_e
    nop

    .line 145
    :goto_f
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 146
    return-void
.end method

.method private static usage()V
    .locals 2

    .line 19
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "anncat, part of the Annotation File Utilities\n(https://checkerframework.org/annotation-file-utilities/)\nusage: anncat <inspec>* [ --out <outspec> ], where:\n    <inspec> ::=\n        ( --javap <in.javap> )\n        | ( --index <in.jaif> )\n        | ( --class <in.class> )\n    <outspec> ::=\n        ( --index <out.jaif> )\n        | ( --class [ --overwrite ] <orig.class> [ --to <out.class> ] )\nIf outspec is omitted, default is index file to stdout.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private static usageAssert(Z)V
    .locals 2
    .param p0, "b"    # Z

    .line 34
    if-nez p0, :cond_0

    .line 35
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "*** Usage error ***"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lscenelib/annotations/tools/Anncat;->usage()V

    .line 37
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 39
    :cond_0
    return-void
.end method
