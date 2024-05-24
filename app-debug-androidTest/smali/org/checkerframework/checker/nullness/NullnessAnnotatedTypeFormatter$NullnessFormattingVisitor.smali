.class public Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter$NullnessFormattingVisitor;
.super Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;
.source "NullnessAnnotatedTypeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NullnessFormattingVisitor"
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V
    .locals 0
    .param p1, "annoFormatter"    # Lorg/checkerframework/framework/util/AnnotationFormatter;
    .param p2, "printVerboseGenerics"    # Z
    .param p3, "defaultInvisiblesSetting"    # Z

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;-><init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter$NullnessFormattingVisitor;->visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 35
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-boolean v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter$NullnessFormattingVisitor;->currentPrintInvisibleSetting:Z

    if-nez v0, :cond_0

    .line 36
    const-string v0, "null"

    return-object v0

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
