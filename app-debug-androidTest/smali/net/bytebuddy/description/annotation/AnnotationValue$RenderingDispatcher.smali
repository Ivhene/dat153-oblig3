.class public abstract enum Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
.super Ljava/lang/Enum;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "RenderingDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field private static final ARRAY_PREFIX:Ljava/lang/String; = "Array with component tag: "

.field public static final CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum JAVA_14_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

.field public static final enum LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;


# instance fields
.field private final closingBrace:C

.field private final componentAsInteger:Z

.field private final openingBrace:C


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 116
    new-instance v6, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;

    const-string v1, "LEGACY_VM"

    const/4 v2, 0x0

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v6, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 151
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$2;

    const-string v8, "JAVA_9_CAPABLE_VM"

    const/4 v9, 0x1

    const/16 v10, 0x7b

    const/16 v11, 0x7d

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$2;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_9_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 200
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$3;

    const-string v14, "JAVA_14_CAPABLE_VM"

    const/4 v15, 0x2

    const/16 v16, 0x7b

    const/16 v17, 0x7d

    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v2}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/ClassFileVersion;->JAVA_V17:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v18

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$3;-><init>(Ljava/lang/String;ICCZ)V

    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->JAVA_14_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 111
    const/4 v2, 0x3

    new-array v2, v2, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    sput-object v2, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 260
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v2}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v2

    .line 261
    .local v2, "classFileVersion":Lnet/bytebuddy/ClassFileVersion;
    sget-object v3, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    goto :goto_0

    .line 263
    :cond_0
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    goto :goto_0

    .line 266
    :cond_1
    sput-object v6, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    .line 268
    .end local v2    # "classFileVersion":Lnet/bytebuddy/ClassFileVersion;
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICCZ)V
    .locals 0
    .param p3, "openingBrace"    # C
    .param p4, "closingBrace"    # C
    .param p5, "componentAsInteger"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCZ)V"
        }
    .end annotation

    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 293
    iput-char p3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->openingBrace:C

    .line 294
    iput-char p4, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->closingBrace:C

    .line 295
    iput-boolean p5, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->componentAsInteger:Z

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ICCZLnet/bytebuddy/description/annotation/AnnotationValue$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # C
    .param p4, "x3"    # C
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lnet/bytebuddy/description/annotation/AnnotationValue$1;

    .line 111
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;-><init>(Ljava/lang/String;ICCZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 111
    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
    .locals 1

    .line 111
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    return-object v0
.end method


# virtual methods
.method public toArrayErrorString(Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;)Ljava/lang/String;
    .locals 2
    .param p1, "sort"    # Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array with component tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->componentAsInteger:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->isDefined()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->getTag()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 414
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    return-object v0
.end method

.method public toSourceString(B)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # B

    .line 315
    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toSourceString(C)Ljava/lang/String;
.end method

.method public abstract toSourceString(D)Ljava/lang/String;
.end method

.method public abstract toSourceString(F)Ljava/lang/String;
.end method

.method public toSourceString(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toSourceString(J)Ljava/lang/String;
.end method

.method public abstract toSourceString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public toSourceString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 393
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->openingBrace:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 395
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 396
    .local v3, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x0

    goto :goto_1

    .line 399
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 403
    :cond_1
    iget-char v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->closingBrace:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract toSourceString(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method

.method public toSourceString(S)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # S

    .line 325
    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSourceString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Z

    .line 305
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
