.class public final Lnet/bytebuddy/jar/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final INT:I = 0x5

.field private static final INTERNAL:I = 0xc

.field public static final INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final METHOD:I = 0xb

.field public static final OBJECT:I = 0xa

.field private static final PRIMITIVE_DESCRIPTORS:Ljava/lang/String; = "VZCBSIFJD"

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;


# instance fields
.field private final sort:I

.field private final valueBegin:I

.field private final valueBuffer:Ljava/lang/String;

.field private final valueEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v1, 0x0

    const-string v2, "VZCBSIFJD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 88
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v1, 0x2

    invoke-direct {v0, v3, v2, v3, v1}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 92
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v1, v3}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 95
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v1, 0x4

    invoke-direct {v0, v3, v2, v3, v1}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 98
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v1, v3}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 101
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v1, 0x6

    invoke-direct {v0, v3, v2, v3, v1}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 104
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v1, v3}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 107
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/16 v1, 0x8

    invoke-direct {v0, v3, v2, v3, v1}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    .line 110
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v1, v3}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "sort"    # I
    .param p2, "valueBuffer"    # Ljava/lang/String;
    .param p3, "valueBegin"    # I
    .param p4, "valueEnd"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    .line 161
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    .line 162
    iput p3, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    .line 163
    iput p4, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    .line 164
    return-void
.end method

.method private static appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 614
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 615
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 621
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 622
    const/16 v1, 0x49

    .local v1, "descriptor":C
    goto :goto_1

    .line 623
    .end local v1    # "descriptor":C
    :cond_1
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 624
    const/16 v1, 0x56

    .restart local v1    # "descriptor":C
    goto :goto_1

    .line 625
    .end local v1    # "descriptor":C
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 626
    const/16 v1, 0x5a

    .restart local v1    # "descriptor":C
    goto :goto_1

    .line 627
    .end local v1    # "descriptor":C
    :cond_3
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 628
    const/16 v1, 0x42

    .restart local v1    # "descriptor":C
    goto :goto_1

    .line 629
    .end local v1    # "descriptor":C
    :cond_4
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 630
    const/16 v1, 0x43

    .restart local v1    # "descriptor":C
    goto :goto_1

    .line 631
    .end local v1    # "descriptor":C
    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 632
    const/16 v1, 0x53

    .restart local v1    # "descriptor":C
    goto :goto_1

    .line 633
    .end local v1    # "descriptor":C
    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 634
    const/16 v1, 0x44

    .restart local v1    # "descriptor":C
    goto :goto_1

    .line 635
    .end local v1    # "descriptor":C
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    .line 636
    const/16 v1, 0x46

    .restart local v1    # "descriptor":C
    goto :goto_1

    .line 637
    .end local v1    # "descriptor":C
    :cond_8
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_9

    .line 638
    const/16 v1, 0x4a

    .line 642
    .restart local v1    # "descriptor":C
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 643
    .end local v1    # "descriptor":C
    goto :goto_2

    .line 640
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 644
    :cond_a
    const/16 v1, 0x4c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    :goto_2
    return-void
.end method

.method private appendDescriptor(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 598
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 600
    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 601
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    iget v3, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 605
    :goto_0
    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;
    .locals 11
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "numArgumentTypes":I
    const/4 v1, 0x1

    .line 302
    .local v1, "currentOffset":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    const/16 v4, 0x4c

    const/16 v5, 0x5b

    const/16 v6, 0x29

    if-eq v2, v6, :cond_2

    .line 303
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "currentOffset":I
    .local v2, "currentOffset":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 308
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 309
    .local v1, "semiColumnOffset":I
    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    goto :goto_2

    .line 306
    .end local v1    # "semiColumnOffset":I
    :cond_1
    move v1, v2

    .line 311
    .end local v2    # "currentOffset":I
    .local v1, "currentOffset":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    new-array v2, v0, [Lnet/bytebuddy/jar/asm/Type;

    .line 317
    .local v2, "argumentTypes":[Lnet/bytebuddy/jar/asm/Type;
    const/4 v1, 0x1

    .line 319
    const/4 v7, 0x0

    .line 320
    .local v7, "currentArgumentTypeIndex":I
    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_5

    .line 321
    move v8, v1

    .line 322
    .local v8, "currentArgumentTypeOffset":I
    :goto_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_3

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 325
    :cond_3
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "currentOffset":I
    .local v9, "currentOffset":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_4

    .line 327
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 328
    .local v1, "semiColumnOffset":I
    add-int/lit8 v10, v1, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v1, v9

    goto :goto_5

    .line 325
    .end local v1    # "semiColumnOffset":I
    :cond_4
    move v1, v9

    .line 330
    .end local v9    # "currentOffset":I
    .local v1, "currentOffset":I
    :goto_5
    add-int/lit8 v9, v7, 0x1

    .line 331
    .end local v7    # "currentArgumentTypeIndex":I
    .local v9, "currentArgumentTypeIndex":I
    invoke-static {p0, v8, v1}, Lnet/bytebuddy/jar/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v10

    aput-object v10, v2, v7

    .line 332
    .end local v8    # "currentArgumentTypeOffset":I
    move v7, v9

    goto :goto_3

    .line 333
    .end local v9    # "currentArgumentTypeIndex":I
    .restart local v7    # "currentArgumentTypeIndex":I
    :cond_5
    return-object v2
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lnet/bytebuddy/jar/asm/Type;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 343
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 344
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    new-array v1, v1, [Lnet/bytebuddy/jar/asm/Type;

    .line 345
    .local v1, "types":[Lnet/bytebuddy/jar/asm/Type;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 346
    aget-object v3, v0, v2

    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    aput-object v3, v1, v2

    .line 345
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 348
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 728
    const/4 v0, 0x1

    .line 730
    .local v0, "argumentsSize":I
    const/4 v1, 0x1

    .line 731
    .local v1, "currentOffset":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 733
    .local v2, "currentChar":I
    :goto_0
    const/16 v3, 0x29

    const/16 v4, 0x44

    const/16 v5, 0x4a

    if-eq v2, v3, :cond_4

    .line 734
    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 738
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_1

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 741
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "currentOffset":I
    .local v3, "currentOffset":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x4c

    if-ne v1, v4, :cond_2

    .line 743
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 744
    .local v1, "semiColumnOffset":I
    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 746
    .end local v1    # "semiColumnOffset":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_3

    .line 735
    .end local v3    # "currentOffset":I
    .local v1, "currentOffset":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 736
    add-int/lit8 v0, v0, 0x2

    .line 748
    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 750
    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 751
    const/16 v3, 0x56

    if-ne v2, v3, :cond_5

    .line 752
    shl-int/lit8 v3, v0, 0x2

    return v3

    .line 754
    :cond_5
    if-eq v2, v5, :cond_7

    if-ne v2, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x2

    .line 755
    .local v3, "returnSize":I
    :goto_5
    shl-int/lit8 v4, v0, 0x2

    or-int/2addr v4, v3

    return v4
.end method

.method public static getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 547
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 550
    .local v1, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 551
    .local v4, "parameter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4, v0}, Lnet/bytebuddy/jar/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 550
    .end local v4    # "parameter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 553
    :cond_0
    const-string v2, ")V"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 535
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lnet/bytebuddy/jar/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 510
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 584
    .local v1, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 585
    .local v4, "parameter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4, v0}, Lnet/bytebuddy/jar/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 584
    .end local v4    # "parameter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 587
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/bytebuddy/jar/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;
    .locals 4
    .param p0, "returnType"    # Lnet/bytebuddy/jar/asm/Type;
    .param p1, "argumentTypes"    # [Lnet/bytebuddy/jar/asm/Type;

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 567
    .local v3, "argumentType":Lnet/bytebuddy/jar/asm/Type;
    invoke-direct {v3, v0}, Lnet/bytebuddy/jar/asm/Type;->appendDescriptor(Ljava/lang/StringBuilder;)V

    .line 566
    .end local v3    # "argumentType":Lnet/bytebuddy/jar/asm/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/Type;->appendDescriptor(Ljava/lang/StringBuilder;)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;
    .locals 4
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 264
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    invoke-direct {v0, v3, p0, v1, v2}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public static varargs getMethodType(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;
    .locals 1
    .param p0, "returnType"    # Lnet/bytebuddy/jar/asm/Type;
    .param p1, "argumentTypes"    # [Lnet/bytebuddy/jar/asm/Type;

    .line 275
    invoke-static {p0, p1}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;
    .locals 4
    .param p0, "internalName"    # Ljava/lang/String;

    .line 252
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    .line 253
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v2, p0, v1, v3}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    .line 252
    return-object v0
.end method

.method public static getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;
    .locals 2
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 368
    nop

    .line 369
    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Type;->getReturnTypeOffset(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 368
    invoke-static {p0, v0, v1}, Lnet/bytebuddy/jar/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/jar/asm/Type;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 379
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method static getReturnTypeOffset(Ljava/lang/String;)I
    .locals 3
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 390
    const/4 v0, 0x1

    .line 392
    .local v0, "currentOffset":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_2

    .line 393
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentOffset":I
    .local v1, "currentOffset":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_1

    .line 398
    const/16 v0, 0x3b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 399
    .local v0, "semiColumnOffset":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 400
    .end local v1    # "currentOffset":I
    .local v0, "currentOffset":I
    goto :goto_0

    .line 396
    .end local v0    # "currentOffset":I
    .restart local v1    # "currentOffset":I
    :cond_1
    move v0, v1

    goto :goto_0

    .line 402
    .end local v1    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/jar/asm/Type;"
        }
    .end annotation

    .line 187
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 188
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 189
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 190
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 191
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 192
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 193
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 194
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 195
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 196
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 197
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 198
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 199
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 200
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 201
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 202
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 203
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 204
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 205
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 207
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_9
    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;
    .locals 2
    .param p0, "typeDescriptor"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lnet/bytebuddy/jar/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/jar/asm/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/jar/asm/Type;"
        }
    .end annotation

    .line 221
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/jar/asm/Type;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 231
    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeInternal(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/Type;
    .locals 4
    .param p0, "descriptorBuffer"    # Ljava/lang/String;
    .param p1, "descriptorBegin"    # I
    .param p2, "descriptorEnd"    # I

    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 437
    :sswitch_0
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1, p2}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 421
    :sswitch_1
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 419
    :sswitch_2
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 427
    :sswitch_3
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 439
    :sswitch_4
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xa

    invoke-direct {v0, v3, p0, v1, v2}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 433
    :sswitch_5
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 429
    :sswitch_6
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 431
    :sswitch_7
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 435
    :sswitch_8
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 423
    :sswitch_9
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 425
    :sswitch_a
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object v0

    .line 441
    :sswitch_b
    new-instance v0, Lnet/bytebuddy/jar/asm/Type;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1, p2}, Lnet/bytebuddy/jar/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_b
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x4c -> :sswitch_4
        0x53 -> :sswitch_3
        0x56 -> :sswitch_2
        0x5a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    .line 844
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 845
    return v0

    .line 847
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/jar/asm/Type;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 848
    return v2

    .line 850
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/jar/asm/Type;

    .line 851
    .local v1, "other":Lnet/bytebuddy/jar/asm/Type;
    iget v3, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    const/16 v4, 0xa

    const/16 v5, 0xc

    if-ne v3, v5, :cond_2

    move v3, v4

    :cond_2
    iget v6, v1, Lnet/bytebuddy/jar/asm/Type;->sort:I

    if-ne v6, v5, :cond_3

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    if-eq v3, v4, :cond_4

    .line 852
    return v2

    .line 854
    :cond_4
    iget v3, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    .line 855
    .local v3, "begin":I
    iget v4, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    .line 856
    .local v4, "end":I
    iget v5, v1, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    .line 857
    .local v5, "otherBegin":I
    iget v6, v1, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    .line 859
    .local v6, "otherEnd":I
    sub-int v7, v4, v3

    sub-int v8, v6, v5

    if-eq v7, v8, :cond_5

    .line 860
    return v2

    .line 862
    :cond_5
    move v7, v3

    .local v7, "i":I
    move v8, v5

    .local v8, "j":I
    :goto_1
    if-ge v7, v4, :cond_7

    .line 863
    iget-object v9, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iget-object v10, v1, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_6

    .line 864
    return v2

    .line 862
    :cond_6
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 867
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_7
    return v0
.end method

.method public getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentsAndReturnSizes()I
    .locals 1

    .line 715
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    .line 458
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 485
    :pswitch_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getElementType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getDimensions()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 480
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 482
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 476
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_3
    const-string v0, "double"

    return-object v0

    .line 474
    :pswitch_4
    const-string v0, "long"

    return-object v0

    .line 472
    :pswitch_5
    const-string v0, "float"

    return-object v0

    .line 470
    :pswitch_6
    const-string v0, "int"

    return-object v0

    .line 468
    :pswitch_7
    const-string v0, "short"

    return-object v0

    .line 466
    :pswitch_8
    const-string v0, "byte"

    return-object v0

    .line 464
    :pswitch_9
    const-string v0, "char"

    return-object v0

    .line 462
    :pswitch_a
    const-string v0, "boolean"

    return-object v0

    .line 460
    :pswitch_b
    const-string v0, "void"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 4

    .line 519
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    iget v3, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 524
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .locals 3

    .line 670
    const/4 v0, 0x1

    .line 671
    .local v0, "numDimensions":I
    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    return v0
.end method

.method public getElementType()Lnet/bytebuddy/jar/asm/Type;
    .locals 4

    .line 241
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getDimensions()I

    move-result v0

    .line 242
    .local v0, "numDimensions":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    add-int/2addr v2, v0

    iget v3, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/jar/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    return-object v1
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 3

    .line 499
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpcode(I)I
    .locals 2
    .param p1, "opcode"    # I

    .line 771
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 799
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    const/16 v1, 0xac

    packed-switch v0, :pswitch_data_0

    .line 827
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 825
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 820
    :pswitch_1
    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x36

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 821
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 823
    :cond_2
    :goto_0
    add-int/lit8 v0, p1, 0x4

    return v0

    .line 816
    :pswitch_2
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 814
    :pswitch_3
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 812
    :pswitch_4
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 810
    :pswitch_5
    return p1

    .line 801
    :pswitch_6
    if-ne p1, v1, :cond_3

    .line 804
    const/16 v0, 0xb1

    return v0

    .line 802
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 772
    :cond_4
    :goto_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_1

    .line 796
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 791
    :pswitch_7
    add-int/lit8 v0, p1, 0x4

    return v0

    .line 787
    :pswitch_8
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 785
    :pswitch_9
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 783
    :pswitch_a
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 781
    :pswitch_b
    return p1

    .line 779
    :pswitch_c
    add-int/lit8 v0, p1, 0x7

    return v0

    .line 777
    :pswitch_d
    add-int/lit8 v0, p1, 0x6

    return v0

    .line 775
    :pswitch_e
    add-int/lit8 v0, p1, 0x5

    return v0

    .line 794
    :pswitch_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public getReturnType()Lnet/bytebuddy/jar/asm/Type;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 684
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 701
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 699
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 696
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 686
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSort()I
    .locals 2

    .line 660
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 877
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0xd

    .line 878
    .local v1, "hashCode":I
    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 879
    iget v0, p0, Lnet/bytebuddy/jar/asm/Type;->valueBegin:I

    .local v0, "i":I
    iget v2, p0, Lnet/bytebuddy/jar/asm/Type;->valueEnd:I

    .local v2, "end":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 880
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v1, v3, 0x11

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 883
    .end local v0    # "i":I
    .end local v2    # "end":I
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
