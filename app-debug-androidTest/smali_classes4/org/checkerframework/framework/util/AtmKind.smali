.class final enum Lorg/checkerframework/framework/util/AtmKind;
.super Ljava/lang/Enum;
.source "AtmCombo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/util/AtmKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum ARRAY:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum DECLARED:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum EXECUTABLE:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum INTERSECTION:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum NONE:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum NULL:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum PRIMITIVE:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum TYPEVAR:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum UNION:Lorg/checkerframework/framework/util/AtmKind;

.field public static final enum WILDCARD:Lorg/checkerframework/framework/util/AtmKind;


# instance fields
.field public final atmClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 36
    new-instance v0, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v1, 0x0

    const-class v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    const-string v3, "ARRAY"

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/framework/util/AtmKind;->ARRAY:Lorg/checkerframework/framework/util/AtmKind;

    .line 37
    new-instance v1, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    const-string v4, "DECLARED"

    invoke-direct {v1, v4, v2, v3}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lorg/checkerframework/framework/util/AtmKind;->DECLARED:Lorg/checkerframework/framework/util/AtmKind;

    .line 38
    new-instance v2, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v3, 0x2

    const-class v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    const-string v5, "EXECUTABLE"

    invoke-direct {v2, v5, v3, v4}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lorg/checkerframework/framework/util/AtmKind;->EXECUTABLE:Lorg/checkerframework/framework/util/AtmKind;

    .line 39
    new-instance v3, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v4, 0x3

    const-class v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    const-string v6, "INTERSECTION"

    invoke-direct {v3, v6, v4, v5}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lorg/checkerframework/framework/util/AtmKind;->INTERSECTION:Lorg/checkerframework/framework/util/AtmKind;

    .line 40
    new-instance v4, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v5, 0x4

    const-class v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;

    const-string v7, "NONE"

    invoke-direct {v4, v7, v5, v6}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lorg/checkerframework/framework/util/AtmKind;->NONE:Lorg/checkerframework/framework/util/AtmKind;

    .line 41
    new-instance v5, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v6, 0x5

    const-class v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    const-string v8, "NULL"

    invoke-direct {v5, v8, v6, v7}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lorg/checkerframework/framework/util/AtmKind;->NULL:Lorg/checkerframework/framework/util/AtmKind;

    .line 42
    new-instance v6, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v7, 0x6

    const-class v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    const-string v9, "PRIMITIVE"

    invoke-direct {v6, v9, v7, v8}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lorg/checkerframework/framework/util/AtmKind;->PRIMITIVE:Lorg/checkerframework/framework/util/AtmKind;

    .line 43
    new-instance v7, Lorg/checkerframework/framework/util/AtmKind;

    const/4 v8, 0x7

    const-class v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    const-string v10, "TYPEVAR"

    invoke-direct {v7, v10, v8, v9}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lorg/checkerframework/framework/util/AtmKind;->TYPEVAR:Lorg/checkerframework/framework/util/AtmKind;

    .line 44
    new-instance v8, Lorg/checkerframework/framework/util/AtmKind;

    const/16 v9, 0x8

    const-class v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    const-string v11, "UNION"

    invoke-direct {v8, v11, v9, v10}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lorg/checkerframework/framework/util/AtmKind;->UNION:Lorg/checkerframework/framework/util/AtmKind;

    .line 45
    new-instance v9, Lorg/checkerframework/framework/util/AtmKind;

    const/16 v10, 0x9

    const-class v11, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    const-string v12, "WILDCARD"

    invoke-direct {v9, v12, v10, v11}, Lorg/checkerframework/framework/util/AtmKind;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lorg/checkerframework/framework/util/AtmKind;->WILDCARD:Lorg/checkerframework/framework/util/AtmKind;

    .line 35
    filled-new-array/range {v0 .. v9}, [Lorg/checkerframework/framework/util/AtmKind;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/AtmKind;->$VALUES:[Lorg/checkerframework/framework/util/AtmKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p3, "atmClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lorg/checkerframework/framework/util/AtmKind;->atmClass:Ljava/lang/Class;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/util/AtmKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/checkerframework/framework/util/AtmKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/AtmKind;

    return-object v0
.end method

.method public static valueOf(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AtmKind;
    .locals 6
    .param p0, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/checkerframework/framework/util/AtmKind;->values()[Lorg/checkerframework/framework/util/AtmKind;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 59
    .local v4, "atmKind":Lorg/checkerframework/framework/util/AtmKind;
    iget-object v5, v4, Lorg/checkerframework/framework/util/AtmKind;->atmClass:Ljava/lang/Class;

    .line 60
    .local v5, "kindClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v5, :cond_0

    .line 61
    return-object v4

    .line 58
    .end local v4    # "atmKind":Lorg/checkerframework/framework/util/AtmKind;
    .end local v5    # "kindClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled AnnotatedTypeMirror ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static values()[Lorg/checkerframework/framework/util/AtmKind;
    .locals 1

    .line 35
    sget-object v0, Lorg/checkerframework/framework/util/AtmKind;->$VALUES:[Lorg/checkerframework/framework/util/AtmKind;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/util/AtmKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/util/AtmKind;

    return-object v0
.end method
