.class public abstract Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;
.super Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter;
.source "VisitorValidator.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter<",
        "Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter;-><init>()V

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

    .line 11
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/VisitorValidator;->accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
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

    .line 14
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 15
    return-void
.end method
