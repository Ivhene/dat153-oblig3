.class public final Lcom/android/dx/rop/type/StdTypeList;
.super Lcom/android/dx/util/FixedSizeList;
.source "StdTypeList.java"

# interfaces
.implements Lcom/android/dx/rop/type/TypeList;


# static fields
.field public static final BOOLEANARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final BYTEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final CHARARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE:Lcom/android/dx/rop/type/StdTypeList;

.field public static final DOUBLEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE_DOUBLE:Lcom/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE_DOUBLEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final EMPTY:Lcom/android/dx/rop/type/StdTypeList;

.field public static final FLOAT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final FLOATARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final FLOAT_FLOAT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final FLOAT_FLOATARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final FLOAT_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT_BOOLEANARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT_BYTEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT_CHARARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT_INTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final INT_SHORTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LONG:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LONGARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LONG_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LONG_LONG:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LONG_LONGARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final LONG_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final OBJECT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final OBJECTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final OBJECT_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final OBJECT_OBJECTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final RETURN_ADDRESS:Lcom/android/dx/rop/type/StdTypeList;

.field public static final SHORTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

.field public static final THROWABLE:Lcom/android/dx/rop/type/StdTypeList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    .line 30
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 33
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->LONG:Lcom/android/dx/rop/type/StdTypeList;

    .line 36
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->FLOAT:Lcom/android/dx/rop/type/StdTypeList;

    .line 39
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->DOUBLE:Lcom/android/dx/rop/type/StdTypeList;

    .line 42
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->OBJECT:Lcom/android/dx/rop/type/StdTypeList;

    .line 45
    sget-object v0, Lcom/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/android/dx/rop/type/Type;

    .line 46
    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->RETURN_ADDRESS:Lcom/android/dx/rop/type/StdTypeList;

    .line 49
    sget-object v0, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    .line 50
    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->THROWABLE:Lcom/android/dx/rop/type/StdTypeList;

    .line 53
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 54
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 57
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    .line 58
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->LONG_LONG:Lcom/android/dx/rop/type/StdTypeList;

    .line 61
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    .line 62
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->FLOAT_FLOAT:Lcom/android/dx/rop/type/StdTypeList;

    .line 65
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    .line 66
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->DOUBLE_DOUBLE:Lcom/android/dx/rop/type/StdTypeList;

    .line 69
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 70
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->OBJECT_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

    .line 73
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 74
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

    .line 77
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 78
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->LONG_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

    .line 81
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 82
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->FLOAT_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

    .line 85
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 86
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->DOUBLE_OBJECT:Lcom/android/dx/rop/type/StdTypeList;

    .line 89
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 90
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->LONG_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 93
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 94
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 97
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 98
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->LONGARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 101
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 102
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->FLOATARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 105
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 106
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->DOUBLEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 109
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 110
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->OBJECTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 113
    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 114
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->BOOLEANARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 117
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 118
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->BYTEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 121
    sget-object v0, Lcom/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 122
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->CHARARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 125
    sget-object v0, Lcom/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 126
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->SHORTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 129
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 130
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT_INTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 133
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 134
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->LONG_LONGARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 137
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 138
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->FLOAT_FLOATARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 141
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 142
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->DOUBLE_DOUBLEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 145
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->OBJECT_OBJECTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 149
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 150
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT_BOOLEANARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 153
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 154
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT_BYTEARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 157
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 158
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT_CHARARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 161
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    sget-object v1, Lcom/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/android/dx/rop/type/Type;

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 162
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/android/dx/rop/type/StdTypeList;->INT_SHORTARR_INT:Lcom/android/dx/rop/type/StdTypeList;

    .line 161
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 332
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 333
    return-void
.end method

.method public static compareContents(Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)I
    .locals 6
    .param p0, "list1"    # Lcom/android/dx/rop/type/TypeList;
    .param p1, "list2"    # Lcom/android/dx/rop/type/TypeList;

    .line 306
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 307
    .local v0, "size1":I
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    .line 308
    .local v1, "size2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 310
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 311
    invoke-interface {p0, v3}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-interface {p1, v3}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    move-result v4

    .line 312
    .local v4, "comparison":I
    if-eqz v4, :cond_0

    .line 313
    return v4

    .line 310
    .end local v4    # "comparison":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "i":I
    :cond_1
    if-ne v0, v1, :cond_2

    .line 318
    const/4 v3, 0x0

    return v3

    .line 319
    :cond_2
    if-ge v0, v1, :cond_3

    .line 320
    const/4 v3, -0x1

    return v3

    .line 322
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static equalContents(Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)Z
    .locals 5
    .param p0, "list1"    # Lcom/android/dx/rop/type/TypeList;
    .param p1, "list2"    # Lcom/android/dx/rop/type/TypeList;

    .line 281
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 283
    .local v0, "size":I
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 284
    return v2

    .line 287
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 288
    invoke-interface {p0, v1}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    return v2

    .line 287
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static hashContents(Lcom/android/dx/rop/type/TypeList;)I
    .locals 5
    .param p0, "list"    # Lcom/android/dx/rop/type/TypeList;

    .line 261
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 262
    .local v0, "size":I
    const/4 v1, 0x0

    .line 264
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 265
    mul-int/lit8 v3, v1, 0x1f

    invoke-interface {p0, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/type/Type;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public static make(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;
    .locals 2
    .param p0, "type"    # Lcom/android/dx/rop/type/Type;

    .line 171
    new-instance v0, Lcom/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 172
    .local v0, "result":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 173
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;
    .locals 2
    .param p0, "type0"    # Lcom/android/dx/rop/type/Type;
    .param p1, "type1"    # Lcom/android/dx/rop/type/Type;

    .line 184
    new-instance v0, Lcom/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 185
    .local v0, "result":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 187
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;
    .locals 2
    .param p0, "type0"    # Lcom/android/dx/rop/type/Type;
    .param p1, "type1"    # Lcom/android/dx/rop/type/Type;
    .param p2, "type2"    # Lcom/android/dx/rop/type/Type;

    .line 199
    new-instance v0, Lcom/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 200
    .local v0, "result":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 202
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 203
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;
    .locals 2
    .param p0, "type0"    # Lcom/android/dx/rop/type/Type;
    .param p1, "type1"    # Lcom/android/dx/rop/type/Type;
    .param p2, "type2"    # Lcom/android/dx/rop/type/Type;
    .param p3, "type3"    # Lcom/android/dx/rop/type/Type;

    .line 217
    new-instance v0, Lcom/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 218
    .local v0, "result":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 220
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 221
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 222
    return-object v0
.end method

.method public static toHuman(Lcom/android/dx/rop/type/TypeList;)Ljava/lang/String;
    .locals 4
    .param p0, "list"    # Lcom/android/dx/rop/type/TypeList;

    .line 234
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 236
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 237
    const-string v1, "<empty>"

    return-object v1

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 243
    if-eqz v2, :cond_1

    .line 244
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    invoke-interface {p0, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/type/Type;
    .locals 1
    .param p1, "n"    # I

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/type/StdTypeList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getType(I)Lcom/android/dx/rop/type/Type;
    .locals 1
    .param p1, "n"    # I

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 345
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 347
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 348
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    add-int/2addr v1, v3

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public set(ILcom/android/dx/rop/type/Type;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "type"    # Lcom/android/dx/rop/type/Type;

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    .line 389
    return-void
.end method

.method public withAddedType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/TypeList;
    .locals 4
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 357
    invoke-virtual {p0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 358
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/rop/type/StdTypeList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 360
    .local v1, "result":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/type/StdTypeList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1, v0, p1}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 365
    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 366
    return-object v1
.end method

.method public withFirst(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;
    .locals 5
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 400
    invoke-virtual {p0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 401
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/rop/type/StdTypeList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 403
    .local v1, "result":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    .line 404
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 405
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/dx/rop/type/StdTypeList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
