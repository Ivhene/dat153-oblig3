.class public final synthetic Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeVariable;-><init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V

    return-object v0
.end method
