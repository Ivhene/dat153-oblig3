.class public final synthetic Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedIntersectionType;->lambda$isAssignableBy$0(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1
.end method
