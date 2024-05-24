.class public Lorg/checkerframework/checker/units/UnitsRelationsTools;
.super Ljava/lang/Object;
.source "UnitsRelationsTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAnnoMirrorWithDefaultPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 300
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v0, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    invoke-static {p0, p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithSpecificPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;Lorg/checkerframework/checker/units/qual/Prefix;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public static buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "annoClass"    # Ljava/lang/CharSequence;

    .line 54
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 316
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public static buildAnnoMirrorWithSpecificPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;Lorg/checkerframework/checker/units/qual/Prefix;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "annoClass"    # Ljava/lang/CharSequence;
    .param p2, "p"    # Lorg/checkerframework/checker/units/qual/Prefix;

    .line 38
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 39
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 40
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public static buildAnnoMirrorWithSpecificPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;Lorg/checkerframework/checker/units/qual/Prefix;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "p"    # Lorg/checkerframework/checker/units/qual/Prefix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/checkerframework/checker/units/qual/Prefix;",
            ")",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 281
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 282
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 283
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private static getAnnotationMirrorPrefix(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationValue;
    .locals 5
    .param p0, "unitsAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 150
    nop

    .line 151
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    .line 154
    .local v0, "elementValues":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    const-string v4, "value"

    invoke-interface {v3, v4}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationValue;

    return-object v1

    .line 158
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getPrefix(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/units/qual/Prefix;
    .locals 8
    .param p0, "unitsAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 87
    invoke-static {p0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getAnnotationMirrorPrefix(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 90
    .local v0, "annotationValue":Ljavax/lang/model/element/AnnotationValue;
    invoke-static {v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Ljavax/lang/model/element/AnnotationValue;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 91
    return-object v2

    .line 96
    :cond_0
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "prefixString":Ljava/lang/String;
    invoke-static {}, Lorg/checkerframework/checker/units/qual/Prefix;->values()[Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 98
    .local v6, "prefix":Lorg/checkerframework/checker/units/qual/Prefix;
    invoke-virtual {v6}, Lorg/checkerframework/checker/units/qual/Prefix;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    return-object v6

    .line 97
    .end local v6    # "prefix":Lorg/checkerframework/checker/units/qual/Prefix;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_2
    return-object v2
.end method

.method public static getPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/checker/units/qual/Prefix;
    .locals 3
    .param p0, "annoType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 64
    const/4 v0, 0x0

    .line 67
    .local v0, "result":Lorg/checkerframework/checker/units/qual/Prefix;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 69
    .local v2, "mirror":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    return-object v0

    .line 74
    .end local v2    # "mirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 77
    :cond_1
    return-object v0
.end method

.method public static hasNoPrefix(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p0, "unitsAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 131
    invoke-static {p0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getAnnotationMirrorPrefix(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 132
    .local v0, "annotationValue":Ljavax/lang/model/element/AnnotationValue;
    invoke-static {v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Ljavax/lang/model/element/AnnotationValue;)Z

    move-result v1

    return v1
.end method

.method private static hasNoPrefix(Ljavax/lang/model/element/AnnotationValue;)Z
    .locals 1
    .param p0, "annotationValue"    # Ljavax/lang/model/element/AnnotationValue;

    .line 137
    if-nez p0, :cond_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNoPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p0, "annoType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 114
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 116
    .local v1, "mirror":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    .end local v1    # "mirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static hasNoUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p0, "annoType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 234
    const-class v0, Lorg/checkerframework/checker/units/qual/UnknownUnits;

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasSpecificUnit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "annoType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "unitsAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 247
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public static hasSpecificUnitIgnoringPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "annoType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "unitsAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 260
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public static removePrefix(Ljavax/lang/model/util/Elements;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .param p1, "unitsAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 175
    invoke-static {p1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    return-object p1

    .line 183
    :cond_0
    nop

    .line 184
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public static removePrefix(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .param p1, "annoType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 203
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 207
    .local v1, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 209
    .local v3, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {p0, v3}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->removePrefix(Ljavax/lang/model/util/Elements;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 211
    .local v4, "cleanedMirror":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_0

    .line 212
    invoke-virtual {v0, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 216
    :cond_0
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 218
    .end local v3    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "cleanedMirror":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    .line 220
    :cond_1
    return-object v0
.end method
