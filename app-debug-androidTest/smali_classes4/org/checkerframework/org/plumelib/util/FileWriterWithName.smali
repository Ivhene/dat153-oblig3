.class public final Lorg/checkerframework/org/plumelib/util/FileWriterWithName;
.super Ljava/io/FileWriter;
.source "FileWriterWithName.java"


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileWriterWithName;->fileName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileWriterWithName;->fileName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/FileWriterWithName;->fileName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 42
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/FileWriterWithName;->fileName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/FileWriterWithName;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/FileWriterWithName;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
