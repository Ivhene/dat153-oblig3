.class Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Replacer;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "AbstractQualifierPolymorphism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Replacer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Void;",
        "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
        "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    .line 288
    iput-object p1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Replacer;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 288
    check-cast p2, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Replacer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 292
    .local p2, "replacements":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Replacer;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->replace(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)V

    .line 293
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
