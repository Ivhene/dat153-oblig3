.class public final synthetic Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType;->lambda$replaceTypeVariables$1(Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
