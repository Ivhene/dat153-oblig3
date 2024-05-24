.class Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;
.super Ljava/lang/Object;
.source "AnnotationBuilder.java"

# interfaces
.implements Lscenelib/annotations/ArrayBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/AnnotationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleArrayBuilder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field abActive:Z

.field aft:Lscenelib/annotations/field/AnnotationFieldType;

.field arrayElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field fieldName:Ljava/lang/String;

.field final synthetic this$0:Lscenelib/annotations/AnnotationBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lscenelib/annotations/AnnotationBuilder;

    return-void
.end method

.method constructor <init>(Lscenelib/annotations/AnnotationBuilder;Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;)V
    .locals 1
    .param p1, "this$0"    # Lscenelib/annotations/AnnotationBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "aft"    # Lscenelib/annotations/field/AnnotationFieldType;

    .line 73
    iput-object p1, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->this$0:Lscenelib/annotations/AnnotationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->abActive:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->arrayElements:Ljava/util/List;

    .line 74
    if-eqz p3, :cond_1

    .line 75
    if-eqz p2, :cond_0

    .line 76
    iput-object p2, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->fieldName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->aft:Lscenelib/annotations/field/AnnotationFieldType;

    .line 78
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public appendElement(Ljava/lang/Object;)V
    .locals 5
    .param p1, "x"    # Ljava/lang/Object;

    .line 81
    iget-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->abActive:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->aft:Lscenelib/annotations/field/AnnotationFieldType;

    invoke-virtual {v0, p1}, Lscenelib/annotations/field/AnnotationFieldType;->isValidValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->arrayElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->fieldName:Ljava/lang/String;

    iget-object v3, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->aft:Lscenelib/annotations/field/AnnotationFieldType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {p1, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 85
    const-string v2, "Bad array element value%n  %s (%s)%nfor field %s%n  %s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish()V
    .locals 3

    .line 92
    iget-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->abActive:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->this$0:Lscenelib/annotations/AnnotationBuilder;

    iget-object v0, v0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    iget-object v1, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->fieldName:Ljava/lang/String;

    iget-object v2, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->arrayElements:Ljava/util/List;

    .line 96
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->this$0:Lscenelib/annotations/AnnotationBuilder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lscenelib/annotations/AnnotationBuilder;->arrayInProgress:Z

    .line 98
    iput-boolean v1, p0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;->abActive:Z

    .line 99
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
