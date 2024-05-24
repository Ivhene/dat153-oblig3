.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;->f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;->f$1:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;->f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;->f$1:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda52;->f$2:Ljava/lang/Object;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-virtual {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;->lambda$visit$1$org-checkerframework-com-github-javaparser-ast-visitor-CloneVisitor(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
