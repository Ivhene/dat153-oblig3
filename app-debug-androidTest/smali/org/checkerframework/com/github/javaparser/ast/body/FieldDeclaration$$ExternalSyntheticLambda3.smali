.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/Optional;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda3;->f$0:Ljava/util/Optional;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda3;->f$0:Ljava/util/Optional;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->lambda$createGetter$1(Ljava/util/Optional;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method
