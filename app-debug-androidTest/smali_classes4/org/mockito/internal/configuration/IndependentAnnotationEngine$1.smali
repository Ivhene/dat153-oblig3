.class Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;
.super Ljava/lang/Object;
.source "IndependentAnnotationEngine.java"

# interfaces
.implements Lorg/mockito/internal/configuration/FieldAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->forAnnotation(Ljava/lang/annotation/Annotation;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
        "TA;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/configuration/IndependentAnnotationEngine;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/IndependentAnnotationEngine;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/configuration/IndependentAnnotationEngine;

    .line 53
    iput-object p1, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;->this$0:Lorg/mockito/internal/configuration/IndependentAnnotationEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    const/4 v0, 0x0

    return-object v0
.end method
