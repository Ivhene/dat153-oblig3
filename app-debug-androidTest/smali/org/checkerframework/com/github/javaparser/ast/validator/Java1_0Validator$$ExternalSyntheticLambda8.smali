.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/Java1_0Validator;->lambda$new$23(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Z

    move-result p1

    return p1
.end method
