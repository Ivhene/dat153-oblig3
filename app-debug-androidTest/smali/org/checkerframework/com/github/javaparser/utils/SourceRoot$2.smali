.class Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parse(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

.field final synthetic val$callback:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;

.field final synthetic val$configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$configuration"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->val$configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->val$callback:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dir",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->access$100(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "absolutePath",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 3
    .param p1, "absolutePath"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "absolutePath",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->val$configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;->val$callback:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;

    invoke-static {v0, p1, v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->access$200(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method
