.class public abstract Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;
.super Ljava/lang/Object;
.source "AbstractVisitor.java"


# static fields
.field public static final OPCODES:[Ljava/lang/String;

.field public static final TYPES:[Ljava/lang/String;


# instance fields
.field protected final buf:Ljava/lang/StringBuffer;

.field public final text:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 59
    const-string v0, "NOP,ACONST_NULL,ICONST_M1,ICONST_0,ICONST_1,ICONST_2,ICONST_3,ICONST_4,ICONST_5,LCONST_0,LCONST_1,FCONST_0,FCONST_1,FCONST_2,DCONST_0,DCONST_1,BIPUSH,SIPUSH,LDC,,,ILOAD,LLOAD,FLOAD,DLOAD,ALOAD,,,,,,,,,,,,,,,,,,,,,IALOAD,LALOAD,FALOAD,DALOAD,AALOAD,BALOAD,CALOAD,SALOAD,ISTORE,LSTORE,FSTORE,DSTORE,ASTORE,,,,,,,,,,,,,,,,,,,,,IASTORE,LASTORE,FASTORE,DASTORE,AASTORE,BASTORE,CASTORE,SASTORE,POP,POP2,DUP,DUP_X1,DUP_X2,DUP2,DUP2_X1,DUP2_X2,SWAP,IADD,LADD,FADD,DADD,ISUB,LSUB,FSUB,DSUB,IMUL,LMUL,FMUL,DMUL,IDIV,LDIV,FDIV,DDIV,IREM,LREM,FREM,DREM,INEG,LNEG,FNEG,DNEG,ISHL,LSHL,ISHR,LSHR,IUSHR,LUSHR,IAND,LAND,IOR,LOR,IXOR,LXOR,IINC,I2L,I2F,I2D,L2I,L2F,L2D,F2I,F2L,F2D,D2I,D2L,D2F,I2B,I2C,I2S,LCMP,FCMPL,FCMPG,DCMPL,DCMPG,IFEQ,IFNE,IFLT,IFGE,IFGT,IFLE,IF_ICMPEQ,IF_ICMPNE,IF_ICMPLT,IF_ICMPGE,IF_ICMPGT,IF_ICMPLE,IF_ACMPEQ,IF_ACMPNE,GOTO,JSR,RET,TABLESWITCH,LOOKUPSWITCH,IRETURN,LRETURN,FRETURN,DRETURN,ARETURN,RETURN,GETSTATIC,PUTSTATIC,GETFIELD,PUTFIELD,INVOKEVIRTUAL,INVOKESPECIAL,INVOKESTATIC,INVOKEINTERFACE,,NEW,NEWARRAY,ANEWARRAY,ARRAYLENGTH,ATHROW,CHECKCAST,INSTANCEOF,MONITORENTER,MONITOREXIT,,MULTIANEWARRAY,IFNULL,IFNONNULL,"

    .line 79
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0xc8

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "i":I
    const/4 v2, 0x0

    .line 83
    .local v2, "j":I
    :goto_0
    const/16 v3, 0x2c

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v5, v4

    .local v5, "l":I
    if-lez v4, :cond_1

    .line 84
    sget-object v3, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->OPCODES:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    add-int/lit8 v6, v2, 0x1

    if-ne v6, v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    aput-object v6, v3, v1

    .line 85
    add-int/lit8 v2, v5, 0x1

    move v1, v4

    goto :goto_0

    .line 88
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const-string v0, "T_BOOLEAN,T_CHAR,T_FLOAT,T_DOUBLE,T_BYTE,T_SHORT,T_INT,T_LONG,"

    .line 89
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->TYPES:[Ljava/lang/String;

    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v1, 0x4

    .line 92
    :goto_2
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v5, v4

    if-lez v4, :cond_2

    .line 93
    sget-object v4, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->TYPES:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 94
    add-int/lit8 v2, v5, 0x1

    move v1, v6

    goto :goto_2

    .line 96
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v5    # "l":I
    .end local v6    # "i":I
    :cond_2
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->text:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->buf:Ljava/lang/StringBuffer;

    .line 123
    return-void
.end method

.method public static appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "s"    # Ljava/lang/String;

    .line 141
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 144
    .local v2, "c":C
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 145
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 146
    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 147
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 148
    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 149
    const-string v3, "\\\\"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 150
    :cond_2
    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    .line 151
    const-string v3, "\\\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 152
    :cond_3
    const/16 v3, 0x20

    if-lt v2, v3, :cond_5

    const/16 v3, 0x7f

    if-le v2, v3, :cond_4

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 153
    :cond_5
    :goto_1
    const-string v3, "\\u"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const/16 v3, 0x10

    if-ge v2, v3, :cond_6

    .line 155
    const-string v4, "000"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 156
    :cond_6
    const/16 v4, 0x100

    if-ge v2, v4, :cond_7

    .line 157
    const-string v4, "00"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 158
    :cond_7
    const/16 v4, 0x1000

    if-ge v2, v4, :cond_8

    .line 159
    const-string v4, "0"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_8
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .end local v2    # "c":C
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    return-void
.end method

.method public static getDefaultAttributes()[Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .locals 4

    .line 194
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Lorg/checkerframework/org/objectweb/asmx/Attribute;

    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;

    invoke-direct {v2}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;-><init>()V

    aput-object v2, v0, v1

    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;

    invoke-direct {v2}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v1, [Lorg/checkerframework/org/objectweb/asmx/Attribute;

    return-object v1
.end method


# virtual methods
.method public getText()Ljava/util/List;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->text:Ljava/util/List;

    return-object v0
.end method

.method printList(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "l"    # Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 178
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 180
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/util/AbstractVisitor;->printList(Ljava/io/PrintWriter;Ljava/util/List;)V

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .end local v1    # "o":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
