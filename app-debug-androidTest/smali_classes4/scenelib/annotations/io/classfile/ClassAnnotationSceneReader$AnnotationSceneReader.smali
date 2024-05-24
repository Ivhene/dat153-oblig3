.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;
.super Ljava/lang/Object;
.source "ClassAnnotationSceneReader.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationSceneReader"
.end annotation


# instance fields
.field protected aElement:Lscenelib/annotations/el/AElement;

.field private annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

.field protected visible:Z

.field private final xBoundIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xExceptionIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xLengthArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xLocationLengthArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xLocationsArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final xOffsetArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xParamIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xStartPcArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xTargetTypeArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final xTypeIndexArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V
    .locals 4
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "aElement"    # Lscenelib/annotations/el/AElement;

    .line 285
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-boolean p3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->visible:Z

    .line 288
    iput-object p4, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    .line 289
    iget-object p1, p1, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->dummyDesc:Ljava/lang/String;

    if-eq p2, p1, :cond_1

    .line 290
    invoke-direct {p0, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->getAnnotationDef(Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object p1

    .line 292
    .local p1, "ad":Lscenelib/annotations/el/AnnotationDef;
    sget-object v0, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    const-string v1, "TODO: ClassAnnotationSceneReader"

    invoke-virtual {v0, p1, v1}, Lscenelib/annotations/AnnotationFactory;->beginAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v0

    .line 297
    .local v0, "ab":Lscenelib/annotations/AnnotationBuilder;
    if-eqz v0, :cond_0

    .line 300
    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    goto :goto_0

    .line 298
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v0    # "ab":Lscenelib/annotations/AnnotationBuilder;
    .end local p1    # "ad":Lscenelib/annotations/el/AnnotationDef;
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTargetTypeArgs:Ljava/util/List;

    .line 307
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xIndexArgs:Ljava/util/List;

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLengthArgs:Ljava/util/List;

    .line 309
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationLengthArgs:Ljava/util/List;

    .line 310
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xOffsetArgs:Ljava/util/List;

    .line 311
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xStartPcArgs:Ljava/util/List;

    .line 312
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    .line 313
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xParamIndexArgs:Ljava/util/List;

    .line 314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xBoundIndexArgs:Ljava/util/List;

    .line 315
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xExceptionIndexArgs:Ljava/util/List;

    .line 316
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTypeIndexArgs:Ljava/util/List;

    .line 317
    return-void
.end method

.method static synthetic access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;)Lscenelib/annotations/AnnotationBuilder;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    .line 200
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    return-object v0
.end method

.method private asList(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1, "hiddenArray"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 382
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 383
    move-object v2, p1

    check-cast v2, [Z

    check-cast v2, [Z

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_7

    aget-boolean v5, v2, v3

    .line 384
    .local v5, "o":Z
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v5    # "o":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    move-object v2, p1

    check-cast v2, [B

    check-cast v2, [B

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_7

    aget-byte v5, v2, v3

    .line 388
    .local v5, "o":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v5    # "o":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 390
    :cond_1
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    move-object v2, p1

    check-cast v2, [C

    check-cast v2, [C

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_7

    aget-char v5, v2, v3

    .line 392
    .local v5, "o":C
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v5    # "o":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 394
    :cond_2
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    move-object v2, p1

    check-cast v2, [S

    check-cast v2, [S

    array-length v4, v2

    :goto_3
    if-ge v3, v4, :cond_7

    aget-short v5, v2, v3

    .line 396
    .local v5, "o":S
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v5    # "o":S
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 398
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    move-object v2, p1

    check-cast v2, [I

    check-cast v2, [I

    array-length v4, v2

    :goto_4
    if-ge v3, v4, :cond_7

    aget v5, v2, v3

    .line 400
    .local v5, "o":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v5    # "o":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 402
    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 403
    move-object v2, p1

    check-cast v2, [J

    check-cast v2, [J

    array-length v4, v2

    :goto_5
    if-ge v3, v4, :cond_7

    aget-wide v5, v2, v3

    .line 404
    .local v5, "o":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v5    # "o":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 406
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 407
    move-object v2, p1

    check-cast v2, [F

    check-cast v2, [F

    array-length v4, v2

    :goto_6
    if-ge v3, v4, :cond_7

    aget v5, v2, v3

    .line 408
    .local v5, "o":F
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v5    # "o":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 410
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 411
    move-object v2, p1

    check-cast v2, [D

    check-cast v2, [D

    array-length v4, v2

    :goto_7
    if-ge v3, v4, :cond_7

    aget-wide v5, v2, v3

    .line 412
    .local v5, "o":D
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v5    # "o":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 417
    :cond_7
    return-object v0

    .line 415
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array has unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAnnotationDef(Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;
    .locals 6
    .param p1, "jvmlClassName"    # Ljava/lang/String;

    .line 252
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "annoTypeName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .local v1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    nop

    .line 272
    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    invoke-static {v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->access$100(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lscenelib/annotations/el/AnnotationDef;->fromClass(Ljava/lang/Class;Ljava/util/Map;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v2

    .line 274
    .local v2, "ad":Lscenelib/annotations/el/AnnotationDef;
    return-object v2

    .line 259
    .end local v1    # "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "ad":Lscenelib/annotations/el/AnnotationDef;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    sget-object v2, Lscenelib/annotations/Annotations;->noAnnotations:Ljava/util/Set;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 263
    invoke-static {v3}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v3

    .line 265
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 264
    const-string v5, "Could not find class %s: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-static {v0, v2, v3, v4}, Lscenelib/annotations/Annotations;->createValueAnnotationDef(Ljava/lang/String;Ljava/util/Set;Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/String;)Lscenelib/annotations/el/AnnotationDef;

    move-result-object v2

    return-object v2

    .line 267
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Could not find class: %s%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 268
    invoke-static {}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;->printClasspath()V

    .line 269
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleCallTypeArgument(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 963
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 965
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 967
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 968
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 969
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 971
    :goto_0
    return-void
.end method

.method private handleClassExtends(Lscenelib/annotations/el/AClass;)V
    .locals 2
    .param p1, "aClass"    # Lscenelib/annotations/el/AClass;

    .line 915
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeTypeIndexLocation()Lscenelib/annotations/el/TypeIndexLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 917
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 919
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeTypeIndexLocation()Lscenelib/annotations/el/TypeIndexLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 920
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 921
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 923
    :goto_0
    return-void
.end method

.method private handleClassTypeParameter(Lscenelib/annotations/el/AClass;)V
    .locals 2
    .param p1, "aClass"    # Lscenelib/annotations/el/AClass;

    .line 874
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeTypeParameterLocation()Lscenelib/annotations/el/BoundLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 875
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 876
    return-void
.end method

.method private handleClassTypeParameterBound(Lscenelib/annotations/el/AClass;)V
    .locals 2
    .param p1, "aClass"    # Lscenelib/annotations/el/AClass;

    .line 882
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeBoundLocation()Lscenelib/annotations/el/BoundLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 884
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 886
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeBoundLocation()Lscenelib/annotations/el/BoundLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 887
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 888
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 890
    :goto_0
    return-void
.end method

.method private handleField(Lscenelib/annotations/el/AElement;)V
    .locals 3
    .param p1, "aElement"    # Lscenelib/annotations/el/AElement;

    .line 742
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    instance-of v0, p1, Lscenelib/annotations/el/AClass;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    instance-of v0, p1, Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FIELD aElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_2
    instance-of v0, p1, Lscenelib/annotations/el/AClass;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 757
    :cond_3
    instance-of v0, p1, Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_4

    .line 758
    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    .line 759
    .local v0, "aTypeElement":Lscenelib/annotations/el/ATypeElement;
    iget-object v1, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 760
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    iget-object v1, v1, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 761
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v0    # "aTypeElement":Lscenelib/annotations/el/ATypeElement;
    nop

    .line 766
    :goto_0
    return-void

    .line 763
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FIELD_COMPONENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleMethodInstanceOf(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 860
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 862
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 864
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 865
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 866
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 868
    :goto_0
    return-void
.end method

.method private handleMethodLocalVariable(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 786
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeLocalLocation()Lscenelib/annotations/el/LocalLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->tlAnnotationsHere:Ljava/util/Set;

    .line 788
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeLocalLocation()Lscenelib/annotations/el/LocalLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 791
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 792
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 794
    :goto_0
    return-void
.end method

.method private handleMethodObjectCreation(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 800
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 802
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 805
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 806
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 808
    :goto_0
    return-void
.end method

.method private handleMethodParameterType(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 818
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeParamIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeParamIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 822
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    .line 821
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 822
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 824
    :goto_0
    return-void
.end method

.method private handleMethodReceiver(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 772
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 774
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 777
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 778
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    :goto_0
    return-void
.end method

.method private handleMethodReference(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 941
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 943
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 946
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 947
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 949
    :goto_0
    return-void
.end method

.method private handleMethodReturnType(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 846
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 848
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 851
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 852
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 854
    :goto_0
    return-void
.end method

.method private handleMethodTypeParameter(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 896
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeTypeParameterLocation()Lscenelib/annotations/el/BoundLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 897
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 898
    return-void
.end method

.method private handleMethodTypeParameterBound(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 904
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeBoundLocation()Lscenelib/annotations/el/BoundLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 906
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 908
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeBoundLocation()Lscenelib/annotations/el/BoundLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 909
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 910
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 912
    :goto_0
    return-void
.end method

.method private handleMethodTypecast(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 830
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 832
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 834
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 835
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 836
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 838
    :goto_0
    return-void
.end method

.method private handleNewTypeArgument(Lscenelib/annotations/el/AMethod;)V
    .locals 1
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 931
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 938
    return-void
.end method

.method private handleReferenceTypeArgument(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 952
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 954
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 956
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 957
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 958
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 960
    :goto_0
    return-void
.end method

.method private handleThrows(Lscenelib/annotations/el/AMethod;)V
    .locals 2
    .param p1, "aMethod"    # Lscenelib/annotations/el/AMethod;

    .line 926
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeTypeIndexLocation()Lscenelib/annotations/el/TypeIndexLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 927
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 928
    return-void
.end method

.method private makeBoundLocation()Lscenelib/annotations/el/BoundLocation;
    .locals 4

    .line 724
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xParamIndexArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Lscenelib/annotations/el/BoundLocation;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xParamIndexArgs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xBoundIndexArgs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/el/BoundLocation;-><init>(II)V

    return-object v0

    .line 728
    :cond_0
    new-instance v0, Lscenelib/annotations/el/BoundLocation;

    const v1, 0x7fffffff

    invoke-direct {v0, v1, v1}, Lscenelib/annotations/el/BoundLocation;-><init>(II)V

    return-object v0
.end method

.method private makeInnerTypeLocation()Lscenelib/annotations/el/InnerTypeLocation;
    .locals 2

    .line 685
    new-instance v0, Lscenelib/annotations/el/InnerTypeLocation;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-direct {v0, v1}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private makeLocalLocation()Lscenelib/annotations/el/LocalLocation;
    .locals 4

    .line 675
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xIndexArgs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 676
    .local v0, "index":I
    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLengthArgs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 677
    .local v2, "length":I
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xStartPcArgs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 678
    .local v1, "start":I
    new-instance v3, Lscenelib/annotations/el/LocalLocation;

    invoke-direct {v3, v0, v1, v2}, Lscenelib/annotations/el/LocalLocation;-><init>(III)V

    return-object v3
.end method

.method private makeOffset(Z)Lscenelib/annotations/el/RelativeLocation;
    .locals 3
    .param p1, "needTypeIndex"    # Z

    .line 692
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xOffsetArgs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 693
    .local v0, "offset":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTypeIndexArgs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 694
    .local v1, "typeIndex":I
    :cond_0
    invoke-static {v0, v1}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v2

    return-object v2
.end method

.method private makeParamIndex()I
    .locals 2

    .line 811
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xParamIndexArgs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private makeTypeIndexLocation()Lscenelib/annotations/el/TypeIndexLocation;
    .locals 3

    .line 733
    new-instance v0, Lscenelib/annotations/el/TypeIndexLocation;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTypeIndexArgs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/TypeIndexLocation;-><init>(I)V

    return-object v0
.end method

.method private makeTypeParameterLocation()Lscenelib/annotations/el/BoundLocation;
    .locals 4

    .line 710
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xParamIndexArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Lscenelib/annotations/el/BoundLocation;

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xParamIndexArgs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lscenelib/annotations/el/BoundLocation;-><init>(II)V

    return-object v0

    .line 714
    :cond_0
    new-instance v0, Lscenelib/annotations/el/BoundLocation;

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v1}, Lscenelib/annotations/el/BoundLocation;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public makeAnnotation()Lscenelib/annotations/Annotation;
    .locals 1

    .line 668
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    invoke-virtual {v0}, Lscenelib/annotations/AnnotationBuilder;->finish()Lscenelib/annotations/Annotation;

    move-result-object v0

    return-object v0
.end method

.method supplySubannotation(Ljava/lang/String;Lscenelib/annotations/Annotation;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "annotation"    # Lscenelib/annotations/Annotation;

    .line 978
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    new-instance v1, Lscenelib/annotations/field/AnnotationAFT;

    .line 979
    invoke-virtual {p2}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/field/AnnotationAFT;-><init>(Lscenelib/annotations/el/AnnotationDef;)V

    .line 978
    invoke-virtual {v0, p1, v1, p2}, Lscenelib/annotations/AnnotationBuilder;->addScalarField(Ljava/lang/String;Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)V

    .line 980
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 984
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    iget-boolean v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->visible:Z

    .line 985
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 984
    const-string v1, "(AnnotationSceneReader: %s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 329
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 330
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    .line 332
    :cond_0
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    .line 334
    :cond_1
    const-class v1, Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    .line 336
    :cond_2
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    .line 338
    :cond_3
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    .line 340
    :cond_4
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    .line 342
    :cond_5
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 343
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto/16 :goto_1

    .line 344
    :cond_6
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 345
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 346
    :cond_7
    const-class v1, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    :try_start_0
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    sget-object v2, Lscenelib/annotations/field/ClassTokenAFT;->ctaft:Lscenelib/annotations/field/ClassTokenAFT;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lscenelib/annotations/AnnotationBuilder;->addScalarField(Ljava/lang/String;Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    nop

    .line 354
    return-void

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load Class for Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 355
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_8
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 358
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    new-instance v2, Lscenelib/annotations/field/ArrayAFT;

    .line 360
    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    .line 359
    invoke-virtual {v1, p1, v2}, Lscenelib/annotations/AnnotationBuilder;->beginArrayField(Ljava/lang/String;Lscenelib/annotations/field/ArrayAFT;)Lscenelib/annotations/ArrayBuilder;

    move-result-object v1

    .line 362
    .local v1, "arrayBuilder":Lscenelib/annotations/ArrayBuilder;
    invoke-direct {p0, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 363
    .local v3, "o":Ljava/lang/Object;
    invoke-interface {v1, v3}, Lscenelib/annotations/ArrayBuilder;->appendElement(Ljava/lang/Object;)V

    .line 364
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 365
    :cond_9
    invoke-interface {v1}, Lscenelib/annotations/ArrayBuilder;->finish()V

    .line 366
    return-void

    .line 370
    .end local v1    # "arrayBuilder":Lscenelib/annotations/ArrayBuilder;
    :cond_a
    :goto_1
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lscenelib/annotations/AnnotationBuilder;->addScalarField(Ljava/lang/String;Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 435
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    invoke-direct {v0, v1, p0, p1, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    invoke-virtual {v0}, Lscenelib/annotations/AnnotationBuilder;->fieldTypes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/field/ArrayAFT;

    .line 445
    .local v0, "aaft":Lscenelib/annotations/field/ArrayAFT;
    iget-object v1, v0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    .line 446
    .local v1, "aft":Lscenelib/annotations/field/ScalarAFT;
    new-instance v2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;

    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    invoke-direct {v2, v3, p0, p1, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$ArrayAnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;)V

    return-object v2
.end method

.method public visitEnd()V
    .locals 3

    .line 548
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTargetTypeArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTargetTypeArgs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/code/TargetType;->fromTargetTypeValue(I)Lcom/sun/tools/javac/code/TargetType;

    move-result-object v0

    .line 555
    .local v0, "target":Lcom/sun/tools/javac/code/TargetType;
    sget-object v1, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 634
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v1

    .line 635
    .local v1, "a":Lscenelib/annotations/Annotation;
    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    iget-object v2, v2, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 624
    .end local v1    # "a":Lscenelib/annotations/Annotation;
    :pswitch_0
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AClass;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleClassTypeParameter(Lscenelib/annotations/el/AClass;)V

    .line 625
    goto/16 :goto_0

    .line 621
    :pswitch_1
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodTypeParameter(Lscenelib/annotations/el/AMethod;)V

    .line 622
    goto/16 :goto_0

    .line 618
    :pswitch_2
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleCallTypeArgument(Lscenelib/annotations/el/AMethod;)V

    .line 619
    goto/16 :goto_0

    .line 614
    :pswitch_3
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleReferenceTypeArgument(Lscenelib/annotations/el/AMethod;)V

    .line 615
    goto/16 :goto_0

    .line 610
    :pswitch_4
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodReference(Lscenelib/annotations/el/AMethod;)V

    .line 611
    goto/16 :goto_0

    .line 606
    :pswitch_5
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleThrows(Lscenelib/annotations/el/AMethod;)V

    .line 607
    goto :goto_0

    .line 603
    :pswitch_6
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AClass;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleClassExtends(Lscenelib/annotations/el/AClass;)V

    .line 604
    goto :goto_0

    .line 600
    :pswitch_7
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodTypeParameterBound(Lscenelib/annotations/el/AMethod;)V

    .line 601
    goto :goto_0

    .line 597
    :pswitch_8
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AClass;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleClassTypeParameterBound(Lscenelib/annotations/el/AClass;)V

    .line 598
    goto :goto_0

    .line 589
    :pswitch_9
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    instance-of v2, v1, Lscenelib/annotations/el/AMethod;

    if-eqz v2, :cond_0

    .line 590
    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodInstanceOf(Lscenelib/annotations/el/AMethod;)V

    goto :goto_0

    .line 586
    :pswitch_a
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodReturnType(Lscenelib/annotations/el/AMethod;)V

    .line 587
    goto :goto_0

    .line 578
    :pswitch_b
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    instance-of v2, v1, Lscenelib/annotations/el/AMethod;

    if-eqz v2, :cond_0

    .line 579
    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodTypecast(Lscenelib/annotations/el/AMethod;)V

    goto :goto_0

    .line 575
    :pswitch_c
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodReceiver(Lscenelib/annotations/el/AMethod;)V

    .line 576
    goto :goto_0

    .line 572
    :pswitch_d
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodParameterType(Lscenelib/annotations/el/AMethod;)V

    .line 573
    goto :goto_0

    .line 564
    :pswitch_e
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    instance-of v2, v1, Lscenelib/annotations/el/AMethod;

    if-eqz v2, :cond_0

    .line 565
    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodObjectCreation(Lscenelib/annotations/el/AMethod;)V

    goto :goto_0

    .line 561
    :pswitch_f
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleMethodLocalVariable(Lscenelib/annotations/el/AMethod;)V

    .line 562
    goto :goto_0

    .line 557
    :pswitch_10
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->handleField(Lscenelib/annotations/el/AElement;)V

    .line 558
    nop

    .line 637
    .end local v0    # "target":Lcom/sun/tools/javac/code/TargetType;
    :cond_0
    :goto_0
    goto :goto_1

    .line 642
    :cond_1
    invoke-virtual {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v0

    .line 644
    .local v0, "a":Lscenelib/annotations/Annotation;
    iget-object v1, v0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v1}, Lscenelib/annotations/el/AnnotationDef;->isTypeAnnotation()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    instance-of v2, v1, Lscenelib/annotations/el/AMethod;

    if-eqz v2, :cond_2

    .line 645
    check-cast v1, Lscenelib/annotations/el/AMethod;

    .line 646
    .local v1, "m":Lscenelib/annotations/el/AMethod;
    iget-object v2, v1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v2, v2, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    .end local v1    # "m":Lscenelib/annotations/el/AMethod;
    goto :goto_1

    .line 655
    :cond_2
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    iget-object v1, v1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v0    # "a":Lscenelib/annotations/Annotation;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->annotationBuilder:Lscenelib/annotations/AnnotationBuilder;

    new-instance v1, Lscenelib/annotations/field/EnumAFT;

    invoke-direct {v1, p2}, Lscenelib/annotations/field/EnumAFT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, p3}, Lscenelib/annotations/AnnotationBuilder;->addScalarField(Ljava/lang/String;Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 2
    .param p1, "bound_index"    # I

    .line 522
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xBoundIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 2
    .param p1, "exception_index"    # I

    .line 532
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xExceptionIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    return-void
.end method

.method public visitXIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 462
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method public visitXLength(I)V
    .locals 2
    .param p1, "length"    # I

    .line 470
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLengthArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 1
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 478
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationsArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 2
    .param p1, "location_length"    # I

    .line 486
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xLocationLengthArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 0

    .line 537
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 0
    .param p1, "num_entries"    # I

    .line 499
    return-void
.end method

.method public visitXOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 494
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xOffsetArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 2
    .param p1, "param_index"    # I

    .line 514
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xParamIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 2
    .param p1, "start_pc"    # I

    .line 506
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xStartPcArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 2
    .param p1, "target_type"    # I

    .line 454
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTargetTypeArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 2
    .param p1, "type_index"    # I

    .line 527
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->xTypeIndexArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method
