.class Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;
.super Ljava/lang/Object;
.source "ClassPath.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;

.field final synthetic val$entry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;Ljava/util/zip/ZipEntry;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;

    .line 515
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->this$0:Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;

    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Ljava/lang/String;
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->this$0:Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->access$200(Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;)Ljava/util/zip/ZipFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

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

    .line 519
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->this$0:Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;->access$200(Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;)Ljava/util/zip/ZipFile;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 537
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 531
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
