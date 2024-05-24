.class public final Lscenelib/annotations/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final saf:Lscenelib/annotations/AnnotationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    nop

    .line 21
    new-instance v0, Lscenelib/annotations/AnnotationFactory;

    invoke-direct {v0}, Lscenelib/annotations/AnnotationFactory;-><init>()V

    sput-object v0, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public beginAnnotation(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lscenelib/annotations/AnnotationBuilder;"
        }
    .end annotation

    .line 50
    .local p2, "tlAnnotationsHere":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lscenelib/annotations/AnnotationBuilder;

    invoke-direct {v0, p1, p2, p3}, Lscenelib/annotations/AnnotationBuilder;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public beginAnnotation(Ljava/lang/annotation/Annotation;Ljava/util/Map;)Lscenelib/annotations/AnnotationBuilder;
    .locals 4
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;)",
            "Lscenelib/annotations/AnnotationBuilder;"
        }
    .end annotation

    .line 38
    .local p2, "adefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lscenelib/annotations/el/AnnotationDef;->fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    .line 39
    .local v0, "def":Lscenelib/annotations/el/AnnotationDef;
    new-instance v1, Lscenelib/annotations/AnnotationBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Annotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lscenelib/annotations/AnnotationBuilder;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)V

    return-object v1
.end method

.method public beginAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;
    .locals 1
    .param p1, "def"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "source"    # Ljava/lang/String;

    .line 30
    new-instance v0, Lscenelib/annotations/AnnotationBuilder;

    invoke-direct {v0, p1, p2}, Lscenelib/annotations/AnnotationBuilder;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)V

    return-object v0
.end method
