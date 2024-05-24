.class public Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter;
.super Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;
.source "NullnessAnnotatedTypeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter$NullnessFormattingVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "printVerboseGenerics"    # Z
    .param p2, "printInvisibleQualifiers"    # Z

    .line 14
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter$NullnessFormattingVisitor;

    new-instance v1, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;-><init>()V

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter$NullnessFormattingVisitor;-><init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;-><init>(Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;)V

    .line 19
    return-void
.end method
