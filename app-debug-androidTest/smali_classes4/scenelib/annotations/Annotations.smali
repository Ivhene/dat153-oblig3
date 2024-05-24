.class public abstract Lscenelib/annotations/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"


# static fields
.field public static aDocumented:Lscenelib/annotations/Annotation;

.field public static aNonNull:Lscenelib/annotations/Annotation;

.field public static aRetentionClass:Lscenelib/annotations/Annotation;

.field public static aRetentionRuntime:Lscenelib/annotations/Annotation;

.field public static aRetentionSource:Lscenelib/annotations/Annotation;

.field public static aTargetTypeUse:Lscenelib/annotations/Annotation;

.field public static adDocumented:Lscenelib/annotations/el/AnnotationDef;

.field public static adNonNull:Lscenelib/annotations/el/AnnotationDef;

.field public static adRetention:Lscenelib/annotations/el/AnnotationDef;

.field public static adTarget:Lscenelib/annotations/el/AnnotationDef;

.field public static aftRetentionPolicy:Lscenelib/annotations/field/EnumAFT;

.field public static asRetentionClass:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static asRetentionRuntime:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static asRetentionSource:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static noAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static noFieldTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static noFieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static onlyTypeAnnotationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static standardDefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation
.end field

.field public static typeQualifierMetaAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->noAnnotations:Ljava/util/Set;

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->noFieldTypes:Ljava/util/Map;

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->noFieldValues:Ljava/util/Map;

    .line 107
    new-instance v0, Lscenelib/annotations/field/EnumAFT;

    const-string v1, "java.lang.annotation.RetentionPolicy"

    invoke-direct {v0, v1}, Lscenelib/annotations/field/EnumAFT;-><init>(Ljava/lang/String;)V

    sput-object v0, Lscenelib/annotations/Annotations;->aftRetentionPolicy:Lscenelib/annotations/field/EnumAFT;

    .line 108
    new-instance v0, Lscenelib/annotations/el/AnnotationDef;

    const-string v1, "java.lang.annotation.Retention"

    const-string v2, "\'Retention\' in scenelib/annotations/Annotations"

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lscenelib/annotations/Annotations;->adRetention:Lscenelib/annotations/el/AnnotationDef;

    .line 110
    sget-object v1, Lscenelib/annotations/Annotations;->aftRetentionPolicy:Lscenelib/annotations/field/EnumAFT;

    invoke-static {v1}, Lscenelib/annotations/Annotations;->valueFieldTypeOnly(Lscenelib/annotations/field/AnnotationFieldType;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AnnotationDef;->setFieldTypes(Ljava/util/Map;)V

    .line 111
    sget-object v0, Lscenelib/annotations/Annotations;->adRetention:Lscenelib/annotations/el/AnnotationDef;

    const-string v1, "RUNTIME"

    invoke-static {v0, v1}, Lscenelib/annotations/Annotations;->createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->aRetentionRuntime:Lscenelib/annotations/Annotation;

    .line 112
    sget-object v0, Lscenelib/annotations/Annotations;->adRetention:Lscenelib/annotations/el/AnnotationDef;

    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->aRetentionRuntime:Lscenelib/annotations/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lscenelib/annotations/Annotations;->adRetention:Lscenelib/annotations/el/AnnotationDef;

    const-string v1, "CLASS"

    invoke-static {v0, v1}, Lscenelib/annotations/Annotations;->createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->aRetentionClass:Lscenelib/annotations/Annotation;

    .line 114
    sget-object v0, Lscenelib/annotations/Annotations;->adRetention:Lscenelib/annotations/el/AnnotationDef;

    const-string v1, "SOURCE"

    invoke-static {v0, v1}, Lscenelib/annotations/Annotations;->createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->aRetentionSource:Lscenelib/annotations/Annotation;

    .line 115
    sget-object v0, Lscenelib/annotations/Annotations;->aRetentionClass:Lscenelib/annotations/Annotation;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->asRetentionClass:Ljava/util/Set;

    .line 116
    sget-object v0, Lscenelib/annotations/Annotations;->aRetentionRuntime:Lscenelib/annotations/Annotation;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->asRetentionRuntime:Ljava/util/Set;

    .line 117
    sget-object v0, Lscenelib/annotations/Annotations;->aRetentionSource:Lscenelib/annotations/Annotation;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->asRetentionSource:Ljava/util/Set;

    .line 120
    new-instance v0, Lscenelib/annotations/el/AnnotationDef;

    const-string v1, "java.lang.annotation.Documented"

    const-string v2, "\'Documented\' in scenelib/annotations/Annotations"

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lscenelib/annotations/Annotations;->adDocumented:Lscenelib/annotations/el/AnnotationDef;

    .line 122
    sget-object v1, Lscenelib/annotations/Annotations;->noFieldTypes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AnnotationDef;->setFieldTypes(Ljava/util/Map;)V

    .line 123
    new-instance v0, Lscenelib/annotations/Annotation;

    sget-object v1, Lscenelib/annotations/Annotations;->adDocumented:Lscenelib/annotations/el/AnnotationDef;

    sget-object v2, Lscenelib/annotations/Annotations;->noFieldValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    sput-object v0, Lscenelib/annotations/Annotations;->aDocumented:Lscenelib/annotations/Annotation;

    .line 124
    sget-object v0, Lscenelib/annotations/Annotations;->adDocumented:Lscenelib/annotations/el/AnnotationDef;

    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->aDocumented:Lscenelib/annotations/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lscenelib/annotations/Annotations;->asRetentionRuntime:Ljava/util/Set;

    new-instance v1, Lscenelib/annotations/field/ArrayAFT;

    new-instance v2, Lscenelib/annotations/field/EnumAFT;

    const-string v3, "java.lang.annotation.ElementType"

    invoke-direct {v2, v3}, Lscenelib/annotations/field/EnumAFT;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    const-string v2, "\'Target\' in scenelib/annotations/Annotations"

    const-string v3, "java.lang.annotation.Target"

    invoke-static {v3, v0, v1, v2}, Lscenelib/annotations/Annotations;->createValueAnnotationDef(Ljava/lang/String;Ljava/util/Set;Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->adTarget:Lscenelib/annotations/el/AnnotationDef;

    .line 130
    nop

    .line 135
    const-string v1, "TYPE_USE"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Lscenelib/annotations/Annotations;->createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->aTargetTypeUse:Lscenelib/annotations/Annotation;

    .line 137
    const/4 v2, 0x3

    new-array v2, v2, [Lscenelib/annotations/Annotation;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lscenelib/annotations/Annotations;->adTarget:Lscenelib/annotations/el/AnnotationDef;

    const-string v3, "TYPE_PARAMETER"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lscenelib/annotations/Annotations;->createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    sget-object v0, Lscenelib/annotations/Annotations;->adTarget:Lscenelib/annotations/el/AnnotationDef;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lscenelib/annotations/Annotations;->createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 137
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/Annotations;->onlyTypeAnnotationTargets:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lscenelib/annotations/Annotations;->typeQualifierMetaAnnotations:Ljava/util/Set;

    .line 143
    sget-object v1, Lscenelib/annotations/Annotations;->aRetentionRuntime:Lscenelib/annotations/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lscenelib/annotations/Annotations;->typeQualifierMetaAnnotations:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->aTargetTypeUse:Lscenelib/annotations/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lscenelib/annotations/el/AnnotationDef;

    sget-object v1, Lscenelib/annotations/Annotations;->typeQualifierMetaAnnotations:Ljava/util/Set;

    sget-object v2, Lscenelib/annotations/Annotations;->noFieldTypes:Ljava/util/Map;

    const-string v3, "\'NonNull\' in scenelib/annotations/Annotations"

    const-string v4, "org.checkerframework.checker.nullness.qual.NonNull"

    invoke-direct {v0, v4, v1, v2, v3}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    sput-object v0, Lscenelib/annotations/Annotations;->adNonNull:Lscenelib/annotations/el/AnnotationDef;

    .line 150
    new-instance v0, Lscenelib/annotations/Annotation;

    sget-object v1, Lscenelib/annotations/Annotations;->adNonNull:Lscenelib/annotations/el/AnnotationDef;

    sget-object v2, Lscenelib/annotations/Annotations;->noFieldValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    sput-object v0, Lscenelib/annotations/Annotations;->aNonNull:Lscenelib/annotations/Annotation;

    .line 152
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lscenelib/annotations/Annotations;->standardDefs:Ljava/util/Set;

    .line 153
    sget-object v1, Lscenelib/annotations/Annotations;->adTarget:Lscenelib/annotations/el/AnnotationDef;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lscenelib/annotations/Annotations;->standardDefs:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->adDocumented:Lscenelib/annotations/el/AnnotationDef;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lscenelib/annotations/Annotations;->standardDefs:Ljava/util/Set;

    sget-object v1, Lscenelib/annotations/Annotations;->adRetention:Lscenelib/annotations/el/AnnotationDef;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertAFV(Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "aft"    # Lscenelib/annotations/field/ScalarAFT;
    .param p1, "x"    # Ljava/lang/Object;

    .line 172
    instance-of v0, p0, Lscenelib/annotations/field/AnnotationAFT;

    if-eqz v0, :cond_0

    .line 173
    move-object v0, p1

    check-cast v0, Lscenelib/annotations/Annotation;

    invoke-static {v0}, Lscenelib/annotations/Annotations;->rebuild(Lscenelib/annotations/Annotation;)Lscenelib/annotations/Annotation;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    return-object p1
.end method

.method public static createValueAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Lscenelib/annotations/Annotation;
    .locals 2
    .param p0, "ad"    # Lscenelib/annotations/el/AnnotationDef;
    .param p1, "value"    # Ljava/lang/Object;

    .line 76
    new-instance v0, Lscenelib/annotations/Annotation;

    invoke-static {p1}, Lscenelib/annotations/Annotations;->valueFieldOnly(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    return-object v0
.end method

.method public static createValueAnnotationDef(Ljava/lang/String;Ljava/util/Set;Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "aft"    # Lscenelib/annotations/field/AnnotationFieldType;
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            "Ljava/lang/String;",
            ")",
            "Lscenelib/annotations/el/AnnotationDef;"
        }
    .end annotation

    .line 71
    .local p1, "metaAnnotations":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    new-instance v0, Lscenelib/annotations/el/AnnotationDef;

    invoke-static {p2}, Lscenelib/annotations/Annotations;->valueFieldTypeOnly(Lscenelib/annotations/field/AnnotationFieldType;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p3}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRetentionPolicyMetaAnnotation(Ljava/lang/annotation/RetentionPolicy;)Lscenelib/annotations/Annotation;
    .locals 2
    .param p0, "rp"    # Ljava/lang/annotation/RetentionPolicy;

    .line 80
    sget-object v0, Lscenelib/annotations/Annotations$1;->$SwitchMap$java$lang$annotation$RetentionPolicy:[I

    invoke-virtual {p0}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/Error;

    const-string v1, "This can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_0
    sget-object v0, Lscenelib/annotations/Annotations;->aRetentionSource:Lscenelib/annotations/Annotation;

    return-object v0

    .line 82
    :pswitch_1
    sget-object v0, Lscenelib/annotations/Annotations;->aRetentionRuntime:Lscenelib/annotations/Annotation;

    return-object v0

    .line 81
    :pswitch_2
    sget-object v0, Lscenelib/annotations/Annotations;->aRetentionClass:Lscenelib/annotations/Annotation;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRetentionPolicyMetaAnnotationSet(Ljava/lang/annotation/RetentionPolicy;)Ljava/util/Set;
    .locals 2
    .param p0, "rp"    # Ljava/lang/annotation/RetentionPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/RetentionPolicy;",
            ")",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lscenelib/annotations/Annotations$1;->$SwitchMap$java$lang$annotation$RetentionPolicy:[I

    invoke-virtual {p0}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/Error;

    const-string v1, "This can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    sget-object v0, Lscenelib/annotations/Annotations;->asRetentionSource:Ljava/util/Set;

    return-object v0

    .line 92
    :pswitch_1
    sget-object v0, Lscenelib/annotations/Annotations;->asRetentionRuntime:Ljava/util/Set;

    return-object v0

    .line 91
    :pswitch_2
    sget-object v0, Lscenelib/annotations/Annotations;->asRetentionClass:Ljava/util/Set;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final rebuild(Lscenelib/annotations/Annotation;)Lscenelib/annotations/Annotation;
    .locals 14
    .param p0, "a"    # Lscenelib/annotations/Annotation;

    .line 189
    sget-object v0, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    invoke-virtual {p0}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rebuild "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v3, v3, Lscenelib/annotations/el/AnnotationDef;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscenelib/annotations/AnnotationFactory;->beginAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v0

    .line 190
    .local v0, "ab":Lscenelib/annotations/AnnotationBuilder;
    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {p0}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    iget-object v1, v1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    .local v2, "fieldDef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    .local v3, "fieldName":Ljava/lang/String;
    nop

    .line 196
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/field/AnnotationFieldType;

    .line 197
    .local v4, "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    nop

    .line 198
    invoke-virtual {p0, v3}, Lscenelib/annotations/Annotation;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 201
    .local v5, "fieldValue":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 202
    move-object v6, v5

    .line 206
    .local v6, "nnFieldValue":Ljava/lang/Object;
    instance-of v7, v4, Lscenelib/annotations/field/ArrayAFT;

    if-eqz v7, :cond_2

    .line 207
    move-object v7, v4

    check-cast v7, Lscenelib/annotations/field/ArrayAFT;

    .line 209
    .local v7, "aFieldType":Lscenelib/annotations/field/ArrayAFT;
    nop

    .line 210
    invoke-virtual {v0, v3, v7}, Lscenelib/annotations/AnnotationBuilder;->beginArrayField(Ljava/lang/String;Lscenelib/annotations/field/ArrayAFT;)Lscenelib/annotations/ArrayBuilder;

    move-result-object v8

    .line 211
    .local v8, "arrb":Lscenelib/annotations/ArrayBuilder;
    move-object v9, v5

    check-cast v9, Ljava/util/List;

    .line 214
    .local v9, "l":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    iget-object v10, v7, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-eqz v10, :cond_1

    .line 215
    iget-object v10, v7, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    .line 220
    .local v10, "nnElementType":Lscenelib/annotations/field/ScalarAFT;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 221
    .local v12, "o":Ljava/lang/Object;
    invoke-static {v10, v12}, Lscenelib/annotations/Annotations;->convertAFV(Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v8, v13}, Lscenelib/annotations/ArrayBuilder;->appendElement(Ljava/lang/Object;)V

    .line 223
    .end local v12    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 224
    :cond_0
    invoke-interface {v8}, Lscenelib/annotations/ArrayBuilder;->finish()V

    .line 225
    .end local v7    # "aFieldType":Lscenelib/annotations/field/ArrayAFT;
    .end local v8    # "arrb":Lscenelib/annotations/ArrayBuilder;
    .end local v9    # "l":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    .end local v10    # "nnElementType":Lscenelib/annotations/field/ScalarAFT;
    goto :goto_2

    .line 217
    .restart local v7    # "aFieldType":Lscenelib/annotations/field/ArrayAFT;
    .restart local v8    # "arrb":Lscenelib/annotations/ArrayBuilder;
    .restart local v9    # "l":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v10, "annotation field type is missing element type"

    invoke-direct {v1, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    .end local v7    # "aFieldType":Lscenelib/annotations/field/ArrayAFT;
    .end local v8    # "arrb":Lscenelib/annotations/ArrayBuilder;
    .end local v9    # "l":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    :cond_2
    move-object v7, v4

    check-cast v7, Lscenelib/annotations/field/ScalarAFT;

    .line 228
    .local v7, "sFieldType":Lscenelib/annotations/field/ScalarAFT;
    nop

    .line 229
    invoke-static {v7, v5}, Lscenelib/annotations/Annotations;->convertAFV(Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 228
    invoke-virtual {v0, v3, v7, v8}, Lscenelib/annotations/AnnotationBuilder;->addScalarField(Ljava/lang/String;Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)V

    .line 231
    .end local v2    # "fieldDef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v5    # "fieldValue":Ljava/lang/Object;
    .end local v6    # "nnFieldValue":Ljava/lang/Object;
    .end local v7    # "sFieldType":Lscenelib/annotations/field/ScalarAFT;
    :goto_2
    goto :goto_0

    .line 203
    .restart local v2    # "fieldDef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    .restart local v3    # "fieldName":Ljava/lang/String;
    .restart local v4    # "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    .restart local v5    # "fieldValue":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "annotation has no field value"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    .end local v2    # "fieldDef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v5    # "fieldValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Lscenelib/annotations/AnnotationBuilder;->finish()Lscenelib/annotations/Annotation;

    move-result-object v1

    return-object v1

    .line 234
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueFieldOnly(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "valueValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    const-string v0, "value"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static valueFieldTypeOnly(Lscenelib/annotations/field/AnnotationFieldType;)Ljava/util/Map;
    .locals 1
    .param p0, "aft"    # Lscenelib/annotations/field/AnnotationFieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ">;"
        }
    .end annotation

    .line 61
    const-string v0, "value"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
