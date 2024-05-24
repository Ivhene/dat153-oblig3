.class public Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;
.super Ljava/lang/Object;
.source "TreeVisitorValidator.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# instance fields
.field private final validator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V
    .locals 0
    .param p1, "validator"    # Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validator"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 8
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public final accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;->validator:Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 18
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 19
    .local v1, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    .line 20
    .end local v1    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
