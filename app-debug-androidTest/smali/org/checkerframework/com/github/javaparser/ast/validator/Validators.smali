.class public Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;
.super Ljava/lang/Object;
.source "Validators.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# instance fields
.field private final validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V
    .locals 2
    .param p1, "validators"    # [Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validators"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->validators:Ljava/util/List;

    .line 16
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    return-void
.end method

.method static synthetic lambda$accept$0(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V
    .locals 0
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "problemReporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p2, "v"    # Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "problemReporter",
            "v"
        }
    .end annotation

    .line 43
    invoke-interface {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

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
            "problemReporter"
        }
    .end annotation

    .line 12
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "problemReporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->validators:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 44
    return-void
.end method

.method public add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;
    .locals 1
    .param p1, "newValidator"    # Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValidator"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->validators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public getValidators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->validators:Ljava/util/List;

    return-object v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;
    .locals 2
    .param p1, "validator"    # Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validator"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->validators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    return-object p0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Trying to remove a validator that isn\'t there."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;
    .locals 0
    .param p1, "oldValidator"    # Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .param p2, "newValidator"    # Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValidator",
            "newValidator"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->remove(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 32
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;->add(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;

    .line 33
    return-object p0
.end method
