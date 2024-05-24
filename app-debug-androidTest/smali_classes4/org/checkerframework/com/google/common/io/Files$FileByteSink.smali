.class final Lorg/checkerframework/com/google/common/io/Files$FileByteSink;
.super Lorg/checkerframework/com/google/common/io/ByteSink;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileByteSink"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final modes:Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Lorg/checkerframework/com/google/common/io/FileWriteMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/io/File;[Lorg/checkerframework/com/google/common/io/FileWriteMode;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "modes"    # [Lorg/checkerframework/com/google/common/io/FileWriteMode;

    .line 186
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/io/ByteSink;-><init>()V

    .line 187
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;->file:Ljava/io/File;

    .line 188
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;->modes:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;[Lorg/checkerframework/com/google/common/io/FileWriteMode;Lorg/checkerframework/com/google/common/io/Files$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # [Lorg/checkerframework/com/google/common/io/FileWriteMode;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/io/Files$1;

    .line 181
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;-><init>(Ljava/io/File;[Lorg/checkerframework/com/google/common/io/FileWriteMode;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;->file:Ljava/io/File;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;->modes:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    sget-object v3, Lorg/checkerframework/com/google/common/io/FileWriteMode;->APPEND:Lorg/checkerframework/com/google/common/io/FileWriteMode;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic openStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;->openStream()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Files.asByteSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/Files$FileByteSink;->modes:Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
