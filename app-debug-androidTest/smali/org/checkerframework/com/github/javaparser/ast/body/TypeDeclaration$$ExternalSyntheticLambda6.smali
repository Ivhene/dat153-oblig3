.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda6;->f$0:Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration$$ExternalSyntheticLambda6;->f$0:Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->lambda$getCallablesWithSignature$3(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$Signature;Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;)Z

    move-result p1

    return p1
.end method
