.class Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;
.super Ljava/lang/Object;
.source "ClassPath.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;

    .line 434
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;->this$0:Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;

    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;->this$0:Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;->access$100(Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;)Ljava/lang/String;

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

    .line 438
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSize()J
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 454
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method
