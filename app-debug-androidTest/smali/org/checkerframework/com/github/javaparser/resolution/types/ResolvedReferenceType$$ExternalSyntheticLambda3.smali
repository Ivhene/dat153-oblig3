.class public final synthetic Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda3;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType$$ExternalSyntheticLambda3;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$typeParametersValues$3$org-checkerframework-com-github-javaparser-resolution-types-ResolvedReferenceType(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
