.class public final enum Lcom/android/dx/dex/file/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dx/dex/file/ItemType;",
        ">;",
        "Lcom/android/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CALL_SITE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_HANDLE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;


# instance fields
.field private final humanName:Ljava/lang/String;

.field private final mapValue:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 25
    new-instance v1, Lcom/android/dx/dex/file/ItemType;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "header_item"

    const-string v4, "TYPE_HEADER_ITEM"

    invoke-direct {v1, v4, v2, v2, v3}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 26
    new-instance v2, Lcom/android/dx/dex/file/ItemType;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "string_id_item"

    const-string v5, "TYPE_STRING_ID_ITEM"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 27
    new-instance v3, Lcom/android/dx/dex/file/ItemType;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "type_id_item"

    const-string v6, "TYPE_TYPE_ID_ITEM"

    invoke-direct {v3, v6, v4, v4, v5}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 28
    new-instance v4, Lcom/android/dx/dex/file/ItemType;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "proto_id_item"

    const-string v7, "TYPE_PROTO_ID_ITEM"

    invoke-direct {v4, v7, v5, v5, v6}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 29
    new-instance v5, Lcom/android/dx/dex/file/ItemType;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "field_id_item"

    const-string v8, "TYPE_FIELD_ID_ITEM"

    invoke-direct {v5, v8, v6, v6, v7}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 30
    new-instance v6, Lcom/android/dx/dex/file/ItemType;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "method_id_item"

    const-string v9, "TYPE_METHOD_ID_ITEM"

    invoke-direct {v6, v9, v7, v7, v8}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 31
    new-instance v7, Lcom/android/dx/dex/file/ItemType;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "class_def_item"

    const-string v10, "TYPE_CLASS_DEF_ITEM"

    invoke-direct {v7, v10, v8, v8, v9}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 32
    new-instance v8, Lcom/android/dx/dex/file/ItemType;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "call_site_id_item"

    const-string v11, "TYPE_CALL_SITE_ID_ITEM"

    invoke-direct {v8, v11, v9, v9, v10}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 33
    new-instance v9, Lcom/android/dx/dex/file/ItemType;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "method_handle_item"

    const-string v12, "TYPE_METHOD_HANDLE_ITEM"

    invoke-direct {v9, v12, v10, v10, v11}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_HANDLE_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 34
    new-instance v10, Lcom/android/dx/dex/file/ItemType;

    move-object v9, v10

    const/16 v11, 0x1000

    const-string v12, "map_list"

    const-string v13, "TYPE_MAP_LIST"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v11, v12}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    .line 35
    new-instance v11, Lcom/android/dx/dex/file/ItemType;

    move-object v10, v11

    const/16 v12, 0x1001

    const-string v13, "type_list"

    const-string v14, "TYPE_TYPE_LIST"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v12, v13}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;

    .line 36
    new-instance v12, Lcom/android/dx/dex/file/ItemType;

    move-object v11, v12

    const/16 v13, 0x1002

    const-string v14, "annotation_set_ref_list"

    const-string v15, "TYPE_ANNOTATION_SET_REF_LIST"

    move-object/from16 v24, v0

    const/16 v0, 0xb

    invoke-direct {v12, v15, v0, v13, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

    .line 37
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v12, v0

    const/16 v13, 0x1003

    const-string v14, "annotation_set_item"

    const-string v15, "TYPE_ANNOTATION_SET_ITEM"

    move-object/from16 v25, v1

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v13, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 38
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v13, v0

    const/16 v1, 0x2000

    const-string v14, "class_data_item"

    const-string v15, "TYPE_CLASS_DATA_ITEM"

    move-object/from16 v26, v2

    const/16 v2, 0xd

    invoke-direct {v0, v15, v2, v1, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 39
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v14, v0

    const/16 v1, 0x2001

    const-string v2, "code_item"

    const-string v15, "TYPE_CODE_ITEM"

    move-object/from16 v27, v3

    const/16 v3, 0xe

    invoke-direct {v0, v15, v3, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 40
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v15, v0

    const/16 v1, 0x2002

    const-string v2, "string_data_item"

    const-string v3, "TYPE_STRING_DATA_ITEM"

    move-object/from16 v28, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 41
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v16, v0

    const/16 v1, 0x2003

    const-string v2, "debug_info_item"

    const-string v3, "TYPE_DEBUG_INFO_ITEM"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 42
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v17, v0

    const/16 v1, 0x2004

    const-string v2, "annotation_item"

    const-string v3, "TYPE_ANNOTATION_ITEM"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 43
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v18, v0

    const/16 v1, 0x2005

    const-string v2, "encoded_array_item"

    const-string v3, "TYPE_ENCODED_ARRAY_ITEM"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 44
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v19, v0

    const/16 v1, 0x2006

    const-string v2, "annotations_directory_item"

    const-string v3, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 45
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v20, v0

    const-string v1, "map_item"

    const-string v2, "TYPE_MAP_ITEM"

    const/16 v3, 0x14

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 46
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "type_item"

    const-string v3, "TYPE_TYPE_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 47
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "exception_handler_item"

    const-string v3, "TYPE_EXCEPTION_HANDLER_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 48
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "annotation_set_ref_item"

    const-string v3, "TYPE_ANNOTATION_SET_REF_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 24
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    filled-new-array/range {v0 .. v23}, [Lcom/android/dx/dex/file/ItemType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p3, "mapValue"    # I
    .param p4, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    .line 67
    iput-object p4, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    .line 70
    move-object p1, p4

    .line 71
    .local p1, "human":Ljava/lang/String;
    const-string p2, "_item"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 74
    :cond_0
    const/16 p2, 0x5f

    const/16 v0, 0x20

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/dex/file/ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/android/dx/dex/file/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public static values()[Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v0}, [Lcom/android/dx/dex/file/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method


# virtual methods
.method public getMapValue()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-object v0
.end method
