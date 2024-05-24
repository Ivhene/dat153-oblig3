.class public Lorg/checkerframework/common/util/TypeVisualizer;
.super Ljava/lang/Object;
.source "TypeVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/TypeVisualizer$Drawing;,
        Lorg/checkerframework/common/util/TypeVisualizer$Node;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawToDot(Ljava/io/File;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p0, "dest"    # Ljava/io/File;
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 59
    new-instance v0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    const-string v1, "Type"

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;-><init>(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 60
    .local v0, "drawer":Lorg/checkerframework/common/util/TypeVisualizer$Drawing;
    invoke-virtual {v0, p0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->draw(Ljava/io/File;)V

    .line 61
    return-void
.end method

.method public static drawToDot(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p0, "dest"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/checkerframework/common/util/TypeVisualizer;->drawToDot(Ljava/io/File;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 71
    return-void
.end method

.method public static drawToPng(Ljava/io/File;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p0, "dest"    # Ljava/io/File;
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 83
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dot"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 84
    .local v0, "dotFile":Ljava/io/File;
    invoke-static {v0, p1}, Lorg/checkerframework/common/util/TypeVisualizer;->drawToDot(Ljava/io/File;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 85
    invoke-static {v0, p0}, Lorg/checkerframework/common/util/TypeVisualizer;->execDotToPng(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "dotFile":Ljava/io/File;
    nop

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "exc":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static drawToPng(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p0, "dest"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/checkerframework/common/util/TypeVisualizer;->drawToPng(Ljava/io/File;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 102
    return-void
.end method

.method public static execDotToPng(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "dotFile"    # Ljava/io/File;
    .param p1, "pngFile"    # Ljava/io/File;

    .line 112
    nop

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-o"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dot"

    const-string v4, "-Tpng"

    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "cmd":[Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printing dotFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to loc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/util/ExecUtil;->execute([Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;)I

    .line 119
    return-void
.end method

.method private static printTypevarIfMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "typeVariable"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "png"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 153
    .local p1, "typeVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "dirPath":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "varName":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    if-eqz p3, :cond_1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/checkerframework/common/util/TypeVisualizer;->drawToPng(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_1

    .line 160
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/checkerframework/common/util/TypeVisualizer;->drawToDot(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 162
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 165
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static printTypevarToDotIfMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "typeVariable"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 131
    .local p1, "typeVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/checkerframework/common/util/TypeVisualizer;->printTypevarIfMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static printTypevarToPngIfMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "typeVariable"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 144
    .local p1, "typeVarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/checkerframework/common/util/TypeVisualizer;->printTypevarIfMatches(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
