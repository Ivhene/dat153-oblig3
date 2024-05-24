.class public Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTypeAnnotator;
.super Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;
.source "NullnessAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NullnessTypeAnnotator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
        "Lorg/checkerframework/checker/nullness/NullnessValue;",
        "Lorg/checkerframework/checker/nullness/NullnessStore;",
        "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
        "Lorg/checkerframework/checker/nullness/NullnessAnalysis;",
        ">.CommitmentTypeAnnotator;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
            "****>;)V"
        }
    .end annotation

    .line 485
    .local p2, "atypeFactory":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<****>;"
    iput-object p1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTypeAnnotator;->this$0:Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 486
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;-><init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V

    .line 487
    return-void
.end method
