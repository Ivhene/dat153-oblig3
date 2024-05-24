.class public final enum Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
.super Ljava/lang/Enum;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum ANNOTATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum ARRAY:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum BOOLEAN:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum BYTE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum CHARACTER:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum DOUBLE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum ENUMERATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum INTEGER:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum LONG:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum NONE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum SHORT:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum STRING:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

.field public static final enum TYPE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;


# instance fields
.field private final tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 564
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/16 v1, 0x5a

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->BOOLEAN:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 569
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/4 v2, 0x1

    const/16 v4, 0x42

    const-string v5, "BYTE"

    invoke-direct {v1, v5, v2, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->BYTE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 574
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/4 v4, 0x2

    const/16 v5, 0x53

    const-string v6, "SHORT"

    invoke-direct {v2, v6, v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->SHORT:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 579
    new-instance v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/4 v5, 0x3

    const/16 v6, 0x43

    const-string v7, "CHARACTER"

    invoke-direct {v4, v7, v5, v6}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->CHARACTER:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 584
    new-instance v5, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/4 v6, 0x4

    const/16 v7, 0x49

    const-string v8, "INTEGER"

    invoke-direct {v5, v8, v6, v7}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->INTEGER:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 589
    new-instance v6, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/4 v7, 0x5

    const/16 v8, 0x4a

    const-string v9, "LONG"

    invoke-direct {v6, v9, v7, v8}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->LONG:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 594
    new-instance v7, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/4 v8, 0x6

    const/16 v9, 0x46

    const-string v10, "FLOAT"

    invoke-direct {v7, v10, v8, v9}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 599
    new-instance v8, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/4 v9, 0x7

    const/16 v10, 0x44

    const-string v11, "DOUBLE"

    invoke-direct {v8, v11, v9, v10}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->DOUBLE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 604
    new-instance v9, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/16 v10, 0x8

    const/16 v11, 0x73

    const-string v12, "STRING"

    invoke-direct {v9, v12, v10, v11}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->STRING:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 609
    new-instance v10, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/16 v11, 0x9

    const/16 v12, 0x63

    const-string v13, "TYPE"

    invoke-direct {v10, v13, v11, v12}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->TYPE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 614
    new-instance v11, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/16 v12, 0xa

    const/16 v13, 0x65

    const-string v14, "ENUMERATION"

    invoke-direct {v11, v14, v12, v13}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ENUMERATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 619
    new-instance v12, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/16 v13, 0xb

    const/16 v14, 0x40

    const-string v15, "ANNOTATION"

    invoke-direct {v12, v15, v13, v14}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ANNOTATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 624
    new-instance v13, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const/16 v14, 0xc

    const/16 v15, 0x5b

    const-string v3, "ARRAY"

    invoke-direct {v13, v3, v14, v15}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ARRAY:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 629
    new-instance v14, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    const-string v3, "NONE"

    const/16 v15, 0xd

    move-object/from16 v16, v13

    const/4 v13, 0x0

    invoke-direct {v14, v3, v15, v13}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->NONE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    .line 559
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object v13, v14

    filled-new-array/range {v0 .. v13}, [Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 641
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 642
    iput p3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->tag:I

    .line 643
    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1
    .param p0, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;

    .line 652
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->BOOLEAN:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 654
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->BYTE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 656
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->SHORT:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 658
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->CHARACTER:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 660
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 661
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->INTEGER:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 662
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 663
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->LONG:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 664
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 665
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 666
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 667
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->DOUBLE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 668
    :cond_7
    const-class v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 669
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->STRING:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 670
    :cond_8
    const-class v0, Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 671
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->TYPE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 672
    :cond_9
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 673
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ENUMERATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 674
    :cond_a
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 675
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ANNOTATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 676
    :cond_b
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 677
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ARRAY:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0

    .line 679
    :cond_c
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->NONE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 559
    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    .line 559
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method


# virtual methods
.method protected getTag()I
    .locals 1

    .line 689
    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->tag:I

    return v0
.end method

.method public isDefined()Z
    .locals 1

    .line 698
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->NONE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
