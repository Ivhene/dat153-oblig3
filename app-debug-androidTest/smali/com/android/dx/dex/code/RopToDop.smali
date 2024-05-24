.class public final Lcom/android/dx/dex/code/RopToDop;
.super Ljava/lang/Object;
.source "RopToDop.java"


# static fields
.field private static final MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/dx/rop/code/Rop;",
            "Lcom/android/dx/dex/code/Dop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 231
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/RopToDop;->MAP:Ljava/util/HashMap;

    .line 232
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NOP:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NOP:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_PARAM_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_PARAM_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_PARAM_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_PARAM_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MOVE_PARAM_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CONST_4:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONST_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CONST_WIDE_16:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONST_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CONST_4:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONST_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CONST_WIDE_16:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONST_OBJECT_NOTHROW:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CONST_4:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_EQZ_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_EQZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_NEZ_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_NEZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_LTZ_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_LTZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_GEZ_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_GEZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_LEZ_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_LEZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_GTZ_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_GTZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_EQZ_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_EQZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_NEZ_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_NEZ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_EQ_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_EQ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_NE_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_NE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_LT_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_LT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_GE_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_GE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_LE_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_LE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_GT_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_GT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_EQ_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_EQ:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v1, Lcom/android/dx/rop/code/Rops;->IF_NE_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IF_NE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SWITCH:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SPARSE_SWITCH:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v1, Lcom/android/dx/rop/code/Rops;->ADD_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->ADD_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lcom/android/dx/rop/code/Rops;->ADD_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->ADD_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/android/dx/rop/code/Rops;->ADD_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->ADD_FLOAT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lcom/android/dx/rop/code/Rops;->ADD_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->ADD_DOUBLE_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SUB_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SUB_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SUB_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SUB_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SUB_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SUB_FLOAT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SUB_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SUB_DOUBLE_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MUL_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MUL_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MUL_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MUL_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MUL_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MUL_FLOAT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MUL_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MUL_DOUBLE_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v1, Lcom/android/dx/rop/code/Rops;->DIV_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DIV_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/android/dx/rop/code/Rops;->DIV_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DIV_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lcom/android/dx/rop/code/Rops;->DIV_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DIV_FLOAT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lcom/android/dx/rop/code/Rops;->DIV_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DIV_DOUBLE_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lcom/android/dx/rop/code/Rops;->REM_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->REM_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lcom/android/dx/rop/code/Rops;->REM_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->REM_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lcom/android/dx/rop/code/Rops;->REM_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->REM_FLOAT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v1, Lcom/android/dx/rop/code/Rops;->REM_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->REM_DOUBLE_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NEG_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NEG_INT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NEG_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NEG_LONG:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NEG_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NEG_FLOAT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NEG_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NEG_DOUBLE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AND_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AND_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AND_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AND_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v1, Lcom/android/dx/rop/code/Rops;->OR_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->OR_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v1, Lcom/android/dx/rop/code/Rops;->OR_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->OR_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v1, Lcom/android/dx/rop/code/Rops;->XOR_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->XOR_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v1, Lcom/android/dx/rop/code/Rops;->XOR_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->XOR_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SHL_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SHL_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SHL_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SHL_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SHR_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SHR_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SHR_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SHR_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v1, Lcom/android/dx/rop/code/Rops;->USHR_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->USHR_INT_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v1, Lcom/android/dx/rop/code/Rops;->USHR_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->USHR_LONG_2ADDR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NOT_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NOT_INT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NOT_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NOT_LONG:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v1, Lcom/android/dx/rop/code/Rops;->ADD_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->ADD_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SUB_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->RSUB_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MUL_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MUL_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v1, Lcom/android/dx/rop/code/Rops;->DIV_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DIV_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v1, Lcom/android/dx/rop/code/Rops;->REM_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->REM_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AND_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AND_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lcom/android/dx/rop/code/Rops;->OR_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->OR_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v1, Lcom/android/dx/rop/code/Rops;->XOR_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->XOR_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SHL_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SHL_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Lcom/android/dx/rop/code/Rops;->SHR_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SHR_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v1, Lcom/android/dx/rop/code/Rops;->USHR_CONST_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->USHR_INT_LIT8:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CMPL_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CMP_LONG:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CMPL_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CMPL_FLOAT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CMPL_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CMPL_DOUBLE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CMPG_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CMPG_FLOAT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CMPG_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CMPG_DOUBLE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_L2I:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->LONG_TO_INT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_F2I:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->FLOAT_TO_INT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_D2I:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DOUBLE_TO_INT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_I2L:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->INT_TO_LONG:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_F2L:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->FLOAT_TO_LONG:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_D2L:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DOUBLE_TO_LONG:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_I2F:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->INT_TO_FLOAT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_L2F:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->LONG_TO_FLOAT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_D2F:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->DOUBLE_TO_FLOAT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_I2D:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->INT_TO_DOUBLE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_L2D:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->LONG_TO_DOUBLE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONV_F2D:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->FLOAT_TO_DOUBLE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v1, Lcom/android/dx/rop/code/Rops;->TO_BYTE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->INT_TO_BYTE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v1, Lcom/android/dx/rop/code/Rops;->TO_CHAR:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->INT_TO_CHAR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v1, Lcom/android/dx/rop/code/Rops;->TO_SHORT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->INT_TO_SHORT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_VOID:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->RETURN_VOID:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->RETURN:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->RETURN_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->RETURN:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->RETURN_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->RETURN_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v1, Lcom/android/dx/rop/code/Rops;->ARRAY_LENGTH:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->ARRAY_LENGTH:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v1, Lcom/android/dx/rop/code/Rops;->THROW:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->THROW:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MONITOR_ENTER:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MONITOR_ENTER:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MONITOR_EXIT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->MONITOR_EXIT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_BOOLEAN:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET_BOOLEAN:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_BYTE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET_BYTE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_CHAR:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET_CHAR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v1, Lcom/android/dx/rop/code/Rops;->AGET_SHORT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->AGET_SHORT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_INT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_BOOLEAN:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT_BOOLEAN:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_BYTE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT_BYTE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_CHAR:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT_CHAR:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Lcom/android/dx/rop/code/Rops;->APUT_SHORT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->APUT_SHORT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NEW_INSTANCE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NEW_INSTANCE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CHECK_CAST:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->CHECK_CAST:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lcom/android/dx/rop/code/Rops;->INSTANCE_OF:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->INSTANCE_OF:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_FIELD_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IGET_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_FIELD_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IGET:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_FIELD_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IGET_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_FIELD_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IGET_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_STATIC_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SGET_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_STATIC_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SGET:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_STATIC_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SGET_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GET_STATIC_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SGET_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_FIELD_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IPUT_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_FIELD_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IPUT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_FIELD_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IPUT_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_FIELD_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->IPUT_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_STATIC_LONG:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SPUT_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_STATIC_FLOAT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SPUT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_STATIC_DOUBLE:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SPUT_WIDE:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v1, Lcom/android/dx/rop/code/Rops;->PUT_STATIC_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->SPUT_OBJECT:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;
    .locals 5
    .param p0, "insn"    # Lcom/android/dx/rop/code/Insn;

    .line 463
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 469
    .local v0, "rop":Lcom/android/dx/rop/code/Rop;
    sget-object v1, Lcom/android/dx/dex/code/RopToDop;->MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/code/Dop;

    .line 470
    .local v1, "result":Lcom/android/dx/dex/code/Dop;
    if-eqz v1, :cond_0

    .line 471
    return-object v1

    .line 491
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 499
    :sswitch_0
    sget-object v2, Lcom/android/dx/dex/code/Dops;->INVOKE_CUSTOM:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 498
    :sswitch_1
    sget-object v2, Lcom/android/dx/dex/code/Dops;->INVOKE_POLYMORPHIC:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 502
    :sswitch_2
    sget-object v2, Lcom/android/dx/dex/code/Dops;->FILL_ARRAY_DATA:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 504
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 506
    .local v2, "resultReg":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v2, :cond_1

    .line 507
    sget-object v3, Lcom/android/dx/dex/code/Dops;->NOP:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 509
    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 523
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected basic type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    :pswitch_0
    sget-object v3, Lcom/android/dx/dex/code/Dops;->MOVE_RESULT_OBJECT:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 519
    :pswitch_1
    sget-object v3, Lcom/android/dx/dex/code/Dops;->MOVE_RESULT_WIDE:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 516
    :pswitch_2
    sget-object v3, Lcom/android/dx/dex/code/Dops;->MOVE_RESULT:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 497
    .end local v2    # "resultReg":Lcom/android/dx/rop/code/RegisterSpec;
    :sswitch_4
    sget-object v2, Lcom/android/dx/dex/code/Dops;->INVOKE_INTERFACE:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 496
    :sswitch_5
    sget-object v2, Lcom/android/dx/dex/code/Dops;->INVOKE_DIRECT:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 495
    :sswitch_6
    sget-object v2, Lcom/android/dx/dex/code/Dops;->INVOKE_SUPER:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 494
    :sswitch_7
    sget-object v2, Lcom/android/dx/dex/code/Dops;->INVOKE_VIRTUAL:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 493
    :sswitch_8
    sget-object v2, Lcom/android/dx/dex/code/Dops;->INVOKE_STATIC:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 569
    :sswitch_9
    move-object v2, p0

    check-cast v2, Lcom/android/dx/rop/code/ThrowingCstInsn;

    .line 570
    invoke-virtual {v2}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 571
    .local v2, "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstFieldRef;->getBasicType()I

    move-result v3

    .line 572
    .local v3, "basicType":I
    packed-switch v3, :pswitch_data_1

    .line 579
    :pswitch_3
    goto/16 :goto_0

    .line 576
    :pswitch_4
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SPUT_SHORT:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 577
    :pswitch_5
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SPUT:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 575
    :pswitch_6
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SPUT_CHAR:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 574
    :pswitch_7
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SPUT_BYTE:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 573
    :pswitch_8
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SPUT_BOOLEAN:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 543
    .end local v2    # "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    .end local v3    # "basicType":I
    :sswitch_a
    move-object v2, p0

    check-cast v2, Lcom/android/dx/rop/code/ThrowingCstInsn;

    .line 544
    invoke-virtual {v2}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 545
    .restart local v2    # "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstFieldRef;->getBasicType()I

    move-result v3

    .line 546
    .restart local v3    # "basicType":I
    packed-switch v3, :pswitch_data_2

    .line 553
    :pswitch_9
    goto/16 :goto_0

    .line 550
    :pswitch_a
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IPUT_SHORT:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 551
    :pswitch_b
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IPUT:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 549
    :pswitch_c
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IPUT_CHAR:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 548
    :pswitch_d
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IPUT_BYTE:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 547
    :pswitch_e
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IPUT_BOOLEAN:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 556
    .end local v2    # "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    .end local v3    # "basicType":I
    :sswitch_b
    move-object v2, p0

    check-cast v2, Lcom/android/dx/rop/code/ThrowingCstInsn;

    .line 557
    invoke-virtual {v2}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 558
    .restart local v2    # "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstFieldRef;->getBasicType()I

    move-result v3

    .line 559
    .restart local v3    # "basicType":I
    packed-switch v3, :pswitch_data_3

    .line 566
    :pswitch_f
    goto :goto_0

    .line 563
    :pswitch_10
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SGET_SHORT:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 564
    :pswitch_11
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SGET:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 562
    :pswitch_12
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SGET_CHAR:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 561
    :pswitch_13
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SGET_BYTE:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 560
    :pswitch_14
    sget-object v4, Lcom/android/dx/dex/code/Dops;->SGET_BOOLEAN:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 530
    .end local v2    # "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    .end local v3    # "basicType":I
    :sswitch_c
    move-object v2, p0

    check-cast v2, Lcom/android/dx/rop/code/ThrowingCstInsn;

    .line 531
    invoke-virtual {v2}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 532
    .restart local v2    # "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstFieldRef;->getBasicType()I

    move-result v3

    .line 533
    .restart local v3    # "basicType":I
    packed-switch v3, :pswitch_data_4

    .line 540
    :pswitch_15
    goto :goto_0

    .line 537
    :pswitch_16
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IGET_SHORT:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 538
    :pswitch_17
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IGET:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 536
    :pswitch_18
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IGET_CHAR:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 535
    :pswitch_19
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IGET_BYTE:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 534
    :pswitch_1a
    sget-object v4, Lcom/android/dx/dex/code/Dops;->IGET_BOOLEAN:Lcom/android/dx/dex/code/Dop;

    return-object v4

    .line 501
    .end local v2    # "ref":Lcom/android/dx/rop/cst/CstFieldRef;
    .end local v3    # "basicType":I
    :sswitch_d
    sget-object v2, Lcom/android/dx/dex/code/Dops;->FILLED_NEW_ARRAY:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 500
    :sswitch_e
    sget-object v2, Lcom/android/dx/dex/code/Dops;->NEW_ARRAY:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 582
    :sswitch_f
    move-object v2, p0

    check-cast v2, Lcom/android/dx/rop/code/ThrowingCstInsn;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 583
    .local v2, "cst":Lcom/android/dx/rop/cst/Constant;
    instance-of v3, v2, Lcom/android/dx/rop/cst/CstType;

    if-eqz v3, :cond_2

    .line 584
    sget-object v3, Lcom/android/dx/dex/code/Dops;->CONST_CLASS:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 585
    :cond_2
    instance-of v3, v2, Lcom/android/dx/rop/cst/CstString;

    if-eqz v3, :cond_3

    .line 586
    sget-object v3, Lcom/android/dx/dex/code/Dops;->CONST_STRING:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 587
    :cond_3
    instance-of v3, v2, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-eqz v3, :cond_4

    .line 588
    sget-object v3, Lcom/android/dx/dex/code/Dops;->CONST_METHOD_HANDLE:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 589
    :cond_4
    instance-of v3, v2, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v3, :cond_5

    .line 590
    sget-object v3, Lcom/android/dx/dex/code/Dops;->CONST_METHOD_TYPE:Lcom/android/dx/dex/code/Dop;

    return-object v3

    .line 592
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected constant type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    .end local v2    # "cst":Lcom/android/dx/rop/cst/Constant;
    :sswitch_10
    sget-object v2, Lcom/android/dx/dex/code/Dops;->MOVE_EXCEPTION:Lcom/android/dx/dex/code/Dop;

    return-object v2

    .line 597
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown rop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x29 -> :sswitch_e
        0x2a -> :sswitch_d
        0x2d -> :sswitch_c
        0x2e -> :sswitch_b
        0x2f -> :sswitch_a
        0x30 -> :sswitch_9
        0x31 -> :sswitch_8
        0x32 -> :sswitch_7
        0x33 -> :sswitch_6
        0x34 -> :sswitch_5
        0x35 -> :sswitch_4
        0x37 -> :sswitch_3
        0x39 -> :sswitch_2
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_17
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
