.class Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;
.super Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/util/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Zip"
.end annotation


# instance fields
.field private final zip:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p1, "z"    # Ljava/util/zip/ZipFile;

    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;-><init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath$1;)V

    .line 484
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    .line 485
    return-void
.end method

.method static synthetic access$200(Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;)Ljava/util/zip/ZipFile;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;

    .line 478
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    return-object v0
.end method


# virtual methods
.method getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 511
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 512
    const/4 v1, 0x0

    return-object v1

    .line 515
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;-><init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;Ljava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 491
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jar:file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 492
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Ljava/net/MalformedURLException;
    return-object v1

    .line 491
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 501
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->zip:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 501
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1
.end method
