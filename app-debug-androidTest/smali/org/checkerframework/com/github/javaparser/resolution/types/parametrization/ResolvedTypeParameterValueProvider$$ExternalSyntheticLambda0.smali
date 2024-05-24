.class public final synthetic Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedTypeTransformer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;

    return-void
.end method


# virtual methods
.method public final transform(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->useThisTypeParametersOnTheGivenType(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
