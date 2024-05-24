.class public Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/UnderscoreKeywordValidator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;
.source "UnderscoreKeywordValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;-><init>()V

    return-void
.end method

.method private static validateIdentifier(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "id",
            "arg"
        }
    .end annotation

    .line 23
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\'_\' is a reserved keyword."

    invoke-virtual {p2, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 9
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/UnderscoreKeywordValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/UnderscoreKeywordValidator;->validateIdentifier(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 13
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 9
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/UnderscoreKeywordValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p2, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/UnderscoreKeywordValidator;->validateIdentifier(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 19
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V

    .line 20
    return-void
.end method
