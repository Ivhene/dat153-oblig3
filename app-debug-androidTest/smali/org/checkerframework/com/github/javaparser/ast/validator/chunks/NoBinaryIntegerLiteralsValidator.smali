.class public Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoBinaryIntegerLiteralsValidator;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;
.source "NoBinaryIntegerLiteralsValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;-><init>()V

    return-void
.end method

.method private static validate(Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
    .param p1, "arg"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
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

    .line 23
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Binary literal values are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
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

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoBinaryIntegerLiteralsValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
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
    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoBinaryIntegerLiteralsValidator;->validate(Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 13
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
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

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoBinaryIntegerLiteralsValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
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
    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/NoBinaryIntegerLiteralsValidator;->validate(Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 19
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V

    .line 20
    return-void
.end method
