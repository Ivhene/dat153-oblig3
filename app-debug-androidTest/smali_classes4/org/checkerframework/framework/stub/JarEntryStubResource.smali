.class public Lorg/checkerframework/framework/stub/JarEntryStubResource;
.super Ljava/lang/Object;
.source "JarEntryStubResource.java"

# interfaces
.implements Lorg/checkerframework/framework/stub/StubResource;


# instance fields
.field private final entry:Ljava/util/jar/JarEntry;

.field private final file:Ljava/util/jar/JarFile;


# direct methods
.method public constructor <init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 0
    .param p1, "file"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/checkerframework/framework/stub/JarEntryStubResource;->file:Ljava/util/jar/JarFile;

    .line 21
    iput-object p2, p0, Lorg/checkerframework/framework/stub/JarEntryStubResource;->entry:Ljava/util/jar/JarEntry;

    .line 22
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/framework/stub/JarEntryStubResource;->file:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/stub/JarEntryStubResource;->entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 31
    iget-object v0, p0, Lorg/checkerframework/framework/stub/JarEntryStubResource;->file:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lorg/checkerframework/framework/stub/JarEntryStubResource;->entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
