.class public abstract Lscenelib/annotations/field/AnnotationFieldType;
.super Lscenelib/annotations/util/EqualByStringRepresentation;
.source "AnnotationFieldType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lscenelib/annotations/util/EqualByStringRepresentation;-><init>()V

    return-void
.end method

.method public static fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/field/AnnotationFieldType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;)",
            "Lscenelib/annotations/field/AnnotationFieldType;"
        }
    .end annotation

    .line 32
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "adefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AnnotationDef;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    .line 36
    .local v0, "cAnno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v1, Lscenelib/annotations/field/AnnotationAFT;

    invoke-static {v0, p1}, Lscenelib/annotations/el/AnnotationDef;->fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/field/AnnotationAFT;-><init>(Lscenelib/annotations/el/AnnotationDef;)V

    return-object v1

    .line 37
    .end local v0    # "cAnno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lscenelib/annotations/field/ArrayAFT;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lscenelib/annotations/field/AnnotationFieldType;->fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/field/AnnotationFieldType;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/field/ScalarAFT;

    invoke-direct {v0, v1}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lscenelib/annotations/field/BasicAFT;->bafts:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    sget-object v0, Lscenelib/annotations/field/BasicAFT;->bafts:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/field/AnnotationFieldType;

    return-object v0

    .line 41
    :cond_2
    const-class v0, Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 42
    sget-object v0, Lscenelib/annotations/field/ClassTokenAFT;->ctaft:Lscenelib/annotations/field/ClassTokenAFT;

    return-object v0

    .line 43
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    new-instance v0, Lscenelib/annotations/field/EnumAFT;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/field/EnumAFT;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final unify(Lscenelib/annotations/field/AnnotationFieldType;Lscenelib/annotations/field/AnnotationFieldType;)Lscenelib/annotations/field/AnnotationFieldType;
    .locals 3
    .param p0, "aft1"    # Lscenelib/annotations/field/AnnotationFieldType;
    .param p1, "aft2"    # Lscenelib/annotations/field/AnnotationFieldType;

    .line 66
    invoke-virtual {p0, p1}, Lscenelib/annotations/field/AnnotationFieldType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-object p0

    .line 68
    :cond_0
    instance-of v0, p0, Lscenelib/annotations/field/ArrayAFT;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lscenelib/annotations/field/ArrayAFT;

    if-eqz v0, :cond_3

    .line 69
    move-object v0, p0

    check-cast v0, Lscenelib/annotations/field/ArrayAFT;

    iget-object v0, v0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-nez v0, :cond_1

    .line 70
    return-object p1

    .line 71
    :cond_1
    move-object v0, p1

    check-cast v0, Lscenelib/annotations/field/ArrayAFT;

    iget-object v0, v0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-nez v0, :cond_2

    .line 72
    return-object p0

    .line 74
    :cond_2
    return-object v1

    .line 76
    :cond_3
    instance-of v0, p0, Lscenelib/annotations/field/AnnotationAFT;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lscenelib/annotations/field/AnnotationAFT;

    if-eqz v0, :cond_5

    .line 77
    move-object v0, p0

    check-cast v0, Lscenelib/annotations/field/AnnotationAFT;

    iget-object v0, v0, Lscenelib/annotations/field/AnnotationAFT;->annotationDef:Lscenelib/annotations/el/AnnotationDef;

    move-object v2, p1

    check-cast v2, Lscenelib/annotations/field/AnnotationAFT;

    iget-object v2, v2, Lscenelib/annotations/field/AnnotationAFT;->annotationDef:Lscenelib/annotations/el/AnnotationDef;

    invoke-static {v0, v2}, Lscenelib/annotations/el/AnnotationDef;->unify(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AnnotationDef;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    .line 80
    .local v0, "ud":Lscenelib/annotations/el/AnnotationDef;
    if-nez v0, :cond_4

    .line 81
    return-object v1

    .line 83
    :cond_4
    new-instance v1, Lscenelib/annotations/field/AnnotationAFT;

    invoke-direct {v1, v0}, Lscenelib/annotations/field/AnnotationAFT;-><init>(Lscenelib/annotations/el/AnnotationDef;)V

    return-object v1

    .line 86
    .end local v0    # "ud":Lscenelib/annotations/el/AnnotationDef;
    :cond_5
    return-object v1
.end method


# virtual methods
.method public abstract accept(Lscenelib/annotations/field/AFTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscenelib/annotations/field/AFTVisitor<",
            "TR;TT;>;TT;)TR;"
        }
    .end annotation
.end method

.method public abstract format(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract isValidValue(Ljava/lang/Object;)Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
