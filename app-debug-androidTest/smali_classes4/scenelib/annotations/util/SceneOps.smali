.class public Lscenelib/annotations/util/SceneOps;
.super Ljava/lang/Object;
.source "SceneOps.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diff(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)Lscenelib/annotations/el/AScene;
    .locals 2
    .param p0, "s1"    # Lscenelib/annotations/el/AScene;
    .param p1, "s2"    # Lscenelib/annotations/el/AScene;

    .line 83
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 84
    .local v0, "diff":Lscenelib/annotations/el/AScene;
    new-instance v1, Lscenelib/annotations/util/DiffVisitor;

    invoke-direct {v1}, Lscenelib/annotations/util/DiffVisitor;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lscenelib/annotations/util/DiffVisitor;->visitScene(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)V

    .line 85
    invoke-virtual {v0}, Lscenelib/annotations/el/AScene;->prune()V

    .line 86
    return-object v0
.end method

.method private static exitWithException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 93
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const-string v1, "diff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: java annotations.util.SceneOps diff first.jaif second.jaif"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 55
    :cond_1
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 56
    .local v0, "s1":Lscenelib/annotations/el/AScene;
    new-instance v1, Lscenelib/annotations/el/AScene;

    invoke-direct {v1}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 59
    .local v1, "s2":Lscenelib/annotations/el/AScene;
    :try_start_0
    aget-object v2, p0, v2

    invoke-static {v2, v0}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 60
    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v2, v1}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 61
    invoke-static {v0, v1}, Lscenelib/annotations/util/SceneOps;->diff(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)Lscenelib/annotations/el/AScene;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .local v2, "diff":Lscenelib/annotations/el/AScene;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lscenelib/annotations/el/DefException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .local v3, "w":Ljava/io/Writer;
    :try_start_2
    invoke-static {v2, v3}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Lscenelib/annotations/el/DefException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    .end local v3    # "w":Ljava/io/Writer;
    goto :goto_1

    .line 63
    .restart local v3    # "w":Ljava/io/Writer;
    :catchall_0
    move-exception v4

    .end local v0    # "s1":Lscenelib/annotations/el/AScene;
    .end local v1    # "s2":Lscenelib/annotations/el/AScene;
    .end local v2    # "diff":Lscenelib/annotations/el/AScene;
    .end local v3    # "w":Ljava/io/Writer;
    .end local p0    # "args":[Ljava/lang/String;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    .restart local v0    # "s1":Lscenelib/annotations/el/AScene;
    .restart local v1    # "s2":Lscenelib/annotations/el/AScene;
    .restart local v2    # "diff":Lscenelib/annotations/el/AScene;
    .restart local v3    # "w":Ljava/io/Writer;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_6
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "s1":Lscenelib/annotations/el/AScene;
    .end local v1    # "s2":Lscenelib/annotations/el/AScene;
    .end local v2    # "diff":Lscenelib/annotations/el/AScene;
    .end local p0    # "args":[Ljava/lang/String;
    :goto_0
    throw v5
    :try_end_6
    .catch Lscenelib/annotations/el/DefException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v3    # "w":Ljava/io/Writer;
    .restart local v0    # "s1":Lscenelib/annotations/el/AScene;
    .restart local v1    # "s2":Lscenelib/annotations/el/AScene;
    .restart local v2    # "diff":Lscenelib/annotations/el/AScene;
    .restart local p0    # "args":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Lscenelib/annotations/el/DefException;
    :try_start_7
    invoke-static {v3}, Lscenelib/annotations/util/SceneOps;->exitWithException(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 70
    .end local v2    # "diff":Lscenelib/annotations/el/AScene;
    .end local v3    # "e":Lscenelib/annotations/el/DefException;
    :goto_1
    goto :goto_2

    .line 68
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lscenelib/annotations/util/SceneOps;->exitWithException(Ljava/lang/Exception;)V

    .line 71
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public static testDiffEmpties()V
    .locals 3

    .line 97
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    new-instance v1, Lscenelib/annotations/el/AScene;

    invoke-direct {v1}, Lscenelib/annotations/el/AScene;-><init>()V

    new-instance v2, Lscenelib/annotations/el/AScene;

    invoke-direct {v2}, Lscenelib/annotations/el/AScene;-><init>()V

    invoke-static {v1, v2}, Lscenelib/annotations/util/SceneOps;->diff(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)Lscenelib/annotations/el/AScene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AScene;->equals(Lscenelib/annotations/el/AScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static testDiffSame()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const-string v0, "test/annotations/tests/classfile/cases"

    .line 103
    .local v0, "dirname":Ljava/lang/String;
    const-string v1, "ClassEmpty"

    const-string v2, "ClassNonEmpty"

    const-string v3, "FieldGeneric"

    const-string v4, "FieldSimple"

    const-string v5, "LocalVariableGenericArray"

    const-string v6, "MethodReceiver"

    const-string v7, "MethodReturnTypeGenericArray"

    const-string v8, "ObjectCreationGenericArray"

    const-string v9, "ObjectCreation"

    const-string v10, "TypecastGenericArray"

    const-string v11, "Typecast"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "testcases":[Ljava/lang/String;
    new-instance v2, Lscenelib/annotations/el/AScene;

    invoke-direct {v2}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 108
    .local v2, "emptyScene":Lscenelib/annotations/el/AScene;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 109
    .local v5, "testcase":Ljava/lang/String;
    new-instance v6, Lscenelib/annotations/el/AScene;

    invoke-direct {v6}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 110
    .local v6, "scene1":Lscenelib/annotations/el/AScene;
    new-instance v7, Lscenelib/annotations/el/AScene;

    invoke-direct {v7}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 111
    .local v7, "scene2":Lscenelib/annotations/el/AScene;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jaif"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "filename":Ljava/lang/String;
    invoke-static {v8, v6}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 113
    invoke-static {v8, v7}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 114
    invoke-static {v6, v6}, Lscenelib/annotations/util/SceneOps;->diff(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)Lscenelib/annotations/el/AScene;

    move-result-object v9

    invoke-virtual {v2, v9}, Lscenelib/annotations/el/AScene;->equals(Lscenelib/annotations/el/AScene;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 115
    invoke-static {v6, v7}, Lscenelib/annotations/util/SceneOps;->diff(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)Lscenelib/annotations/el/AScene;

    move-result-object v9

    invoke-virtual {v2, v9}, Lscenelib/annotations/el/AScene;->equals(Lscenelib/annotations/el/AScene;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    .end local v5    # "testcase":Ljava/lang/String;
    .end local v6    # "scene1":Lscenelib/annotations/el/AScene;
    .end local v7    # "scene2":Lscenelib/annotations/el/AScene;
    .end local v8    # "filename":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .restart local v5    # "testcase":Ljava/lang/String;
    .restart local v6    # "scene1":Lscenelib/annotations/el/AScene;
    .restart local v7    # "scene2":Lscenelib/annotations/el/AScene;
    .restart local v8    # "filename":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 114
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 117
    .end local v5    # "testcase":Ljava/lang/String;
    .end local v6    # "scene1":Lscenelib/annotations/el/AScene;
    .end local v7    # "scene2":Lscenelib/annotations/el/AScene;
    .end local v8    # "filename":Ljava/lang/String;
    :cond_2
    return-void
.end method
