.class synthetic Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;
.super Ljava/lang/Object;
.source "TraceTypeAnnotationVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$tools$javac$code$TargetType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    invoke-static {}, Lcom/sun/tools/javac/code/TargetType;->values()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    :try_start_0
    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->FIELD:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    :try_start_c
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    :try_start_d
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    :try_start_f
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    return-void
.end method
