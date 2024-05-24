.class public Lorg/checkerframework/checker/units/UnitsRelationsDefault;
.super Ljava/lang/Object;
.source "UnitsRelationsDefault.java"

# interfaces
.implements Lorg/checkerframework/checker/units/UnitsRelations;


# instance fields
.field protected elements:Ljavax/lang/model/util/Elements;

.field protected h:Ljavax/lang/model/element/AnnotationMirror;

.field protected km:Ljavax/lang/model/element/AnnotationMirror;

.field protected km2:Ljavax/lang/model/element/AnnotationMirror;

.field protected kmPERh:Ljavax/lang/model/element/AnnotationMirror;

.field protected m:Ljavax/lang/model/element/AnnotationMirror;

.field protected m2:Ljavax/lang/model/element/AnnotationMirror;

.field protected mPERs:Ljavax/lang/model/element/AnnotationMirror;

.field protected mPERs2:Ljavax/lang/model/element/AnnotationMirror;

.field protected mm:Ljavax/lang/model/element/AnnotationMirror;

.field protected mm2:Ljavax/lang/model/element/AnnotationMirror;

.field protected s:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected bothHaveSpecificPrefix(Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;)Z
    .locals 1
    .param p1, "lhtPrefix"    # Lorg/checkerframework/checker/units/qual/Prefix;
    .param p2, "rhtPrefix"    # Lorg/checkerframework/checker/units/qual/Prefix;
    .param p3, "specificPrefix"    # Lorg/checkerframework/checker/units/qual/Prefix;

    .line 152
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    if-ne p1, p2, :cond_1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 153
    :cond_2
    :goto_0
    return v0
.end method

.method public division(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "lht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "rht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 110
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->s:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->h:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->kmPERh:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m2:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 119
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km2:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 122
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mm2:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mm:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mm:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 125
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->s:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 128
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->kmPERh:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->h:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 131
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->s:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs2:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 134
    :cond_7
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs2:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->s:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 138
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method protected havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "lht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "ul"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "rht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "ur"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 173
    invoke-static {p1, p2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasSpecificUnit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p3, p4}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasSpecificUnit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0
.end method

.method protected havePairOfUnitsIgnoringOrder(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "lht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "u1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "rht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "u2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 192
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p4, p3, p2}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init(Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/checker/units/UnitsRelations;
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 36
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->elements:Ljavax/lang/model/util/Elements;

    .line 38
    const-class v0, Lorg/checkerframework/checker/units/qual/m;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithDefaultPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    .line 39
    const-class v0, Lorg/checkerframework/checker/units/qual/m;

    sget-object v1, Lorg/checkerframework/checker/units/qual/Prefix;->kilo:Lorg/checkerframework/checker/units/qual/Prefix;

    invoke-static {p1, v0, v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithSpecificPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;Lorg/checkerframework/checker/units/qual/Prefix;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km:Ljavax/lang/model/element/AnnotationMirror;

    .line 40
    const-class v0, Lorg/checkerframework/checker/units/qual/m;

    sget-object v1, Lorg/checkerframework/checker/units/qual/Prefix;->milli:Lorg/checkerframework/checker/units/qual/Prefix;

    invoke-static {p1, v0, v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithSpecificPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;Lorg/checkerframework/checker/units/qual/Prefix;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mm:Ljavax/lang/model/element/AnnotationMirror;

    .line 42
    const-class v0, Lorg/checkerframework/checker/units/qual/m2;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m2:Ljavax/lang/model/element/AnnotationMirror;

    .line 43
    const-class v0, Lorg/checkerframework/checker/units/qual/km2;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km2:Ljavax/lang/model/element/AnnotationMirror;

    .line 44
    const-class v0, Lorg/checkerframework/checker/units/qual/mm2;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mm2:Ljavax/lang/model/element/AnnotationMirror;

    .line 46
    const-class v0, Lorg/checkerframework/checker/units/qual/s;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithDefaultPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->s:Ljavax/lang/model/element/AnnotationMirror;

    .line 47
    const-class v0, Lorg/checkerframework/checker/units/qual/h;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->h:Ljavax/lang/model/element/AnnotationMirror;

    .line 49
    const-class v0, Lorg/checkerframework/checker/units/qual/mPERs;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs:Ljavax/lang/model/element/AnnotationMirror;

    .line 50
    const-class v0, Lorg/checkerframework/checker/units/qual/kmPERh;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->kmPERh:Ljavax/lang/model/element/AnnotationMirror;

    .line 52
    const-class v0, Lorg/checkerframework/checker/units/qual/mPERs2;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs2:Ljavax/lang/model/element/AnnotationMirror;

    .line 54
    return-object p0
.end method

.method public multiplication(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "lht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "rht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 68
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasSpecificUnitIgnoringPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    .line 69
    invoke-static {p2, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasSpecificUnitIgnoringPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-static {p1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m2:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 75
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v0

    .line 76
    .local v0, "lhtPrefix":Lorg/checkerframework/checker/units/qual/Prefix;
    invoke-static {p2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v2

    .line 78
    .local v2, "rhtPrefix":Lorg/checkerframework/checker/units/qual/Prefix;
    sget-object v3, Lorg/checkerframework/checker/units/qual/Prefix;->kilo:Lorg/checkerframework/checker/units/qual/Prefix;

    invoke-virtual {p0, v0, v2, v3}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->bothHaveSpecificPrefix(Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km2:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 81
    :cond_1
    sget-object v3, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    invoke-virtual {p0, v0, v2, v3}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->bothHaveSpecificPrefix(Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m2:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 84
    :cond_2
    sget-object v3, Lorg/checkerframework/checker/units/qual/Prefix;->milli:Lorg/checkerframework/checker/units/qual/Prefix;

    invoke-virtual {p0, v0, v2, v3}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->bothHaveSpecificPrefix(Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;Lorg/checkerframework/checker/units/qual/Prefix;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mm2:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 88
    :cond_3
    return-object v1

    .line 90
    .end local v0    # "lhtPrefix":Lorg/checkerframework/checker/units/qual/Prefix;
    .end local v2    # "rhtPrefix":Lorg/checkerframework/checker/units/qual/Prefix;
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->s:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v2, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnitsIgnoringOrder(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->m:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 93
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->s:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v2, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs2:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnitsIgnoringOrder(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->mPERs:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 96
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->h:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v2, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->kmPERh:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->havePairOfUnitsIgnoringOrder(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->km:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 100
    :cond_7
    return-object v1
.end method
