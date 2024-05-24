.class public final Lcom/android/dx/rop/type/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Lcom/android/dx/rop/type/TypeBearer;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dx/rop/type/TypeBearer;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/rop/type/Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANNOTATION:Lcom/android/dx/rop/type/Type;

.field public static final BOOLEAN:Lcom/android/dx/rop/type/Type;

.field public static final BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final BOOLEAN_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final BT_ADDR:I = 0xa

.field public static final BT_BOOLEAN:I = 0x1

.field public static final BT_BYTE:I = 0x2

.field public static final BT_CHAR:I = 0x3

.field public static final BT_COUNT:I = 0xb

.field public static final BT_DOUBLE:I = 0x4

.field public static final BT_FLOAT:I = 0x5

.field public static final BT_INT:I = 0x6

.field public static final BT_LONG:I = 0x7

.field public static final BT_OBJECT:I = 0x9

.field public static final BT_SHORT:I = 0x8

.field public static final BT_VOID:I

.field public static final BYTE:Lcom/android/dx/rop/type/Type;

.field public static final BYTE_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final BYTE_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final CHAR:Lcom/android/dx/rop/type/Type;

.field public static final CHARACTER_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final CHAR_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final CLASS:Lcom/android/dx/rop/type/Type;

.field public static final CLONEABLE:Lcom/android/dx/rop/type/Type;

.field public static final DOUBLE:Lcom/android/dx/rop/type/Type;

.field public static final DOUBLE_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final DOUBLE_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final FLOAT:Lcom/android/dx/rop/type/Type;

.field public static final FLOAT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final FLOAT_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final INT:Lcom/android/dx/rop/type/Type;

.field public static final INTEGER_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final INT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final KNOWN_NULL:Lcom/android/dx/rop/type/Type;

.field public static final LONG:Lcom/android/dx/rop/type/Type;

.field public static final LONG_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final LONG_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final METHOD_HANDLE:Lcom/android/dx/rop/type/Type;

.field public static final METHOD_TYPE:Lcom/android/dx/rop/type/Type;

.field public static final OBJECT:Lcom/android/dx/rop/type/Type;

.field public static final OBJECT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final RETURN_ADDRESS:Lcom/android/dx/rop/type/Type;

.field public static final SERIALIZABLE:Lcom/android/dx/rop/type/Type;

.field public static final SHORT:Lcom/android/dx/rop/type/Type;

.field public static final SHORT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final SHORT_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final STRING:Lcom/android/dx/rop/type/Type;

.field public static final THROWABLE:Lcom/android/dx/rop/type/Type;

.field public static final VAR_HANDLE:Lcom/android/dx/rop/type/Type;

.field public static final VOID:Lcom/android/dx/rop/type/Type;

.field public static final VOID_CLASS:Lcom/android/dx/rop/type/Type;

.field private static final internTable:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrayType:Lcom/android/dx/rop/type/Type;

.field private final basicType:I

.field private className:Ljava/lang/String;

.field private componentType:Lcom/android/dx/rop/type/Type;

.field private final descriptor:Ljava/lang/String;

.field private initializedType:Lcom/android/dx/rop/type/Type;

.field private final newAt:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Lcom/android/dx/rop/type/Type;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    .line 79
    new-instance v1, Lcom/android/dx/rop/type/Type;

    const-string v2, "B"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    .line 82
    new-instance v2, Lcom/android/dx/rop/type/Type;

    const-string v3, "C"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    .line 85
    new-instance v3, Lcom/android/dx/rop/type/Type;

    const-string v4, "D"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    .line 88
    new-instance v4, Lcom/android/dx/rop/type/Type;

    const-string v5, "F"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    .line 91
    new-instance v5, Lcom/android/dx/rop/type/Type;

    const-string v6, "I"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 94
    new-instance v6, Lcom/android/dx/rop/type/Type;

    const-string v7, "J"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    .line 97
    new-instance v7, Lcom/android/dx/rop/type/Type;

    const-string v8, "S"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    .line 100
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "V"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    .line 103
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "<null>"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    .line 106
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "<addr>"

    const/16 v11, 0xa

    invoke-direct {v8, v9, v11}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/android/dx/rop/type/Type;

    .line 113
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/annotation/Annotation;"

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->ANNOTATION:Lcom/android/dx/rop/type/Type;

    .line 117
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Class;"

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->CLASS:Lcom/android/dx/rop/type/Type;

    .line 120
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Cloneable;"

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->CLONEABLE:Lcom/android/dx/rop/type/Type;

    .line 123
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/invoke/MethodHandle;"

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/android/dx/rop/type/Type;

    .line 126
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/invoke/MethodType;"

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->METHOD_TYPE:Lcom/android/dx/rop/type/Type;

    .line 129
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/invoke/VarHandle;"

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->VAR_HANDLE:Lcom/android/dx/rop/type/Type;

    .line 132
    new-instance v8, Lcom/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Object;"

    invoke-direct {v8, v9, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 135
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/io/Serializable;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/android/dx/rop/type/Type;

    .line 138
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/String;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->STRING:Lcom/android/dx/rop/type/Type;

    .line 141
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Throwable;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    .line 148
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Boolean;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/android/dx/rop/type/Type;

    .line 155
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Byte;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/android/dx/rop/type/Type;

    .line 162
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Character;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/android/dx/rop/type/Type;

    .line 169
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Double;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/android/dx/rop/type/Type;

    .line 176
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Float;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/android/dx/rop/type/Type;

    .line 183
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Integer;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/android/dx/rop/type/Type;

    .line 190
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Long;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->LONG_CLASS:Lcom/android/dx/rop/type/Type;

    .line 197
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Short;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/android/dx/rop/type/Type;

    .line 204
    new-instance v9, Lcom/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Void;"

    invoke-direct {v9, v11, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->VOID_CLASS:Lcom/android/dx/rop/type/Type;

    .line 207
    new-instance v9, Lcom/android/dx/rop/type/Type;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v0, v0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 210
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v1, v1, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 213
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 216
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 219
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 222
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 225
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 228
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 231
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/android/dx/rop/type/Type;

    .line 234
    invoke-static {}, Lcom/android/dx/rop/type/Type;->initInterns()V

    .line 235
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "basicType"    # I

    .line 506
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    .line 507
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "basicType"    # I
    .param p3, "newAt"    # I

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    if-eqz p1, :cond_2

    .line 480
    if-ltz p2, :cond_1

    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    .line 484
    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    .line 488
    iput-object p1, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 489
    iput p2, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    .line 490
    iput p3, p0, Lcom/android/dx/rop/type/Type;->newAt:I

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    .line 492
    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    .line 493
    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->initializedType:Lcom/android/dx/rop/type/Type;

    .line 494
    return-void

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAt < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad basicType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearInternTable()V
    .locals 1

    .line 910
    sget-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 911
    invoke-static {}, Lcom/android/dx/rop/type/Type;->initInterns()V

    .line 912
    return-void
.end method

.method private static initInterns()V
    .locals 1

    .line 243
    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 244
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 245
    sget-object v0, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 246
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 247
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 248
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 249
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 250
    sget-object v0, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 256
    sget-object v0, Lcom/android/dx/rop/type/Type;->ANNOTATION:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 257
    sget-object v0, Lcom/android/dx/rop/type/Type;->CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 258
    sget-object v0, Lcom/android/dx/rop/type/Type;->CLONEABLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 259
    sget-object v0, Lcom/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 260
    sget-object v0, Lcom/android/dx/rop/type/Type;->VAR_HANDLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 261
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 262
    sget-object v0, Lcom/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 263
    sget-object v0, Lcom/android/dx/rop/type/Type;->STRING:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 264
    sget-object v0, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 265
    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 266
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 267
    sget-object v0, Lcom/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 268
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 269
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 270
    sget-object v0, Lcom/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 271
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 272
    sget-object v0, Lcom/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 273
    sget-object v0, Lcom/android/dx/rop/type/Type;->VOID_CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 276
    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 277
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 278
    sget-object v0, Lcom/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 279
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 280
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 281
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 282
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 283
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 284
    sget-object v0, Lcom/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    .line 285
    return-void
.end method

.method public static intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;
    .locals 10
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 343
    sget-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/Type;

    .line 345
    .local v0, "result":Lcom/android/dx/rop/type/Type;
    if-eqz v0, :cond_0

    .line 346
    return-object v0

    .line 351
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .local v1, "firstChar":C
    nop

    .line 360
    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 365
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    return-object v2

    .line 374
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 375
    .local v2, "length":I
    const/16 v4, 0x4c

    const-string v5, "bad descriptor: "

    if-ne v1, v4, :cond_4

    add-int/lit8 v4, v2, -0x1

    .line 376
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_4

    .line 389
    add-int/lit8 v4, v2, -0x1

    .line 390
    .local v4, "limit":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 391
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 392
    .local v7, "c":C
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 401
    :sswitch_0
    if-eq v6, v3, :cond_2

    add-int/lit8 v8, v2, -0x1

    if-eq v6, v8, :cond_2

    add-int/lit8 v8, v6, -0x1

    .line 403
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 404
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    :sswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    .end local v7    # "c":C
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 411
    .end local v6    # "i":I
    :cond_3
    new-instance v3, Lcom/android/dx/rop/type/Type;

    const/16 v5, 0x9

    invoke-direct {v3, p0, v5}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    move-object v0, v3

    .line 412
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    return-object v3

    .line 377
    .end local v4    # "limit":I
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    .end local v1    # "firstChar":C
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 357
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "descriptor == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 354
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "descriptor is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2e -> :sswitch_1
        0x2f -> :sswitch_0
        0x3b -> :sswitch_1
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method public static internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 454
    if-eqz p0, :cond_1

    .line 458
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {p0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static internReturnType(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;
    .locals 3
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 428
    :try_start_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 435
    :cond_0
    nop

    .line 437
    invoke-static {p0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "descriptor == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;
    .locals 2
    .param p0, "type"    # Lcom/android/dx/rop/type/Type;

    .line 905
    sget-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/Type;

    .line 906
    .local v0, "result":Lcom/android/dx/rop/type/Type;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public asUninitialized(I)Lcom/android/dx/rop/type/Type;
    .locals 3
    .param p1, "newAt"    # I

    .line 867
    if-ltz p1, :cond_2

    .line 871
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "newDesc":Ljava/lang/String;
    new-instance v1, Lcom/android/dx/rop/type/Type;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2, p1}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    .line 892
    .local v1, "result":Lcom/android/dx/rop/type/Type;
    iput-object p0, v1, Lcom/android/dx/rop/type/Type;->initializedType:Lcom/android/dx/rop/type/Type;

    .line 893
    invoke-static {v1}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    move-result-object v2

    return-object v2

    .line 882
    .end local v0    # "newDesc":Ljava/lang/String;
    .end local v1    # "result":Lcom/android/dx/rop/type/Type;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already uninitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a reference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAt < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Lcom/android/dx/rop/type/Type;)I
    .locals 2
    .param p1, "other"    # Lcom/android/dx/rop/type/Type;

    .line 536
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/android/dx/rop/type/Type;

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 512
    if-ne p0, p1, :cond_0

    .line 517
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/type/Type;

    if-nez v0, :cond_1

    .line 521
    const/4 v0, 0x0

    return v0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/type/Type;

    iget-object v1, v1, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getArrayType()Lcom/android/dx/rop/type/Type;
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Lcom/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getBasicFrameType()I
    .locals 1

    .line 601
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 611
    :pswitch_0
    return v0

    .line 607
    :pswitch_1
    const/4 v0, 0x6

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBasicType()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    .line 663
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    sparse-switch v0, :sswitch_data_0

    .line 670
    const/4 v0, 0x1

    return v0

    .line 666
    :sswitch_0
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 639
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_0

    .line 640
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentType()Lcom/android/dx/rop/type/Type;
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    if-nez v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    goto :goto_0

    .line 849
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 579
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 589
    :pswitch_0
    return-object p0

    .line 585
    :pswitch_1
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getFrameType()Lcom/android/dx/rop/type/TypeBearer;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getFrameType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInitializedType()Lcom/android/dx/rop/type/Type;
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->initializedType:Lcom/android/dx/rop/type/Type;

    if-eqz v0, :cond_0

    .line 824
    return-object v0

    .line 820
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNewAt()I
    .locals 1

    .line 809
    iget v0, p0, Lcom/android/dx/rop/type/Type;->newAt:I

    return v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .locals 0

    .line 573
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isArrayOrKnownNull()Z
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

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

.method public isCategory1()Z
    .locals 1

    .line 681
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    sparse-switch v0, :sswitch_data_0

    .line 688
    const/4 v0, 0x1

    return v0

    .line 684
    :sswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public isCategory2()Z
    .locals 1

    .line 699
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    sparse-switch v0, :sswitch_data_0

    .line 706
    const/4 v0, 0x0

    return v0

    .line 702
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public isConstant()Z
    .locals 1

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public isIntlike()Z
    .locals 1

    .line 717
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 727
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 723
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPrimitive()Z
    .locals 1

    .line 737
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 751
    const/4 v0, 0x0

    return v0

    .line 747
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isReference()Z
    .locals 2

    .line 763
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUninitialized()Z
    .locals 1

    .line 796
    iget v0, p0, Lcom/android/dx/rop/type/Type;->newAt:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 3

    .line 548
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 559
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object v0

    .line 558
    :pswitch_0
    nop

    .line 562
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :pswitch_1
    const-string v0, "short"

    return-object v0

    .line 556
    :pswitch_2
    const-string v0, "long"

    return-object v0

    .line 555
    :pswitch_3
    const-string v0, "int"

    return-object v0

    .line 554
    :pswitch_4
    const-string v0, "float"

    return-object v0

    .line 553
    :pswitch_5
    const-string v0, "double"

    return-object v0

    .line 552
    :pswitch_6
    const-string v0, "char"

    return-object v0

    .line 551
    :pswitch_7
    const-string v0, "byte"

    return-object v0

    .line 550
    :pswitch_8
    const-string v0, "boolean"

    return-object v0

    .line 549
    :pswitch_9
    const-string v0, "void"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object v0
.end method
