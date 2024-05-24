.class public Lorg/checkerframework/framework/stub/FileStubResource;
.super Ljava/lang/Object;
.source "FileStubResource.java"

# interfaces
.implements Lorg/checkerframework/framework/stub/StubResource;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/checkerframework/framework/stub/FileStubResource;->file:Ljava/io/File;

    .line 19
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/checkerframework/framework/stub/FileStubResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/checkerframework/framework/stub/FileStubResource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
