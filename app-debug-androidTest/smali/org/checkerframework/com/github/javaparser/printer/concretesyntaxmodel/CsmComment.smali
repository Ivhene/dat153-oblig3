.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment;
.super Ljava/lang/Object;
.source "CsmComment.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$prettyPrint$0(Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V
    .locals 0
    .param p0, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .param p1, "c"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "printer",
            "c"
        }
    .end annotation

    .line 54
    invoke-static {p1, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment;->process(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    return-void
.end method

.method static process(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 3
    .param p0, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .param p1, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comment",
            "printer"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->normalizeEolInTextBlock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "content":Ljava/lang/String;
    instance-of v1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    const-string v2, "*/"

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "/*"

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 37
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 38
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 39
    :cond_0
    instance-of v1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    if-eqz v1, :cond_1

    .line 40
    const-string v1, "/**"

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 41
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 42
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 43
    :cond_1
    instance-of v1, p0, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    if-eqz v1, :cond_2

    .line 44
    const-string v1, "//"

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 45
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 55
    return-void
.end method
