.class public final synthetic Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->lambda$getInternalType$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z

    move-result p1

    return p1
.end method
