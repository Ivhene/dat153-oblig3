.class public final synthetic Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->lambda$getEnumConstant$2(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method
