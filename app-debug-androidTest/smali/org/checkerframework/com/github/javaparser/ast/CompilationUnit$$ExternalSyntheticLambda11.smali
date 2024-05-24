.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda11;->f$0:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda11;->f$0:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->lambda$getPrimaryType$9$org-checkerframework-com-github-javaparser-ast-CompilationUnit(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
