.class public Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ASMContentHandler.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationDefaultRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueArrayRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueEnumRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationParameterRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$MaxRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$OpcodesRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LocalVarRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LineNumberRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LabelRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LookupSwitchLabelRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LookupSwitchRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchLabelRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$MethodRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$OuterClassRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InterfacesRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InterfaceRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$SourceRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;,
        Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$OpcodeGroup;
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "class"

.field static final OPCODES:Ljava/util/Map;


# instance fields
.field private final RULES:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;

.field protected computeMax:Z

.field protected cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

.field protected labels:Ljava/util/Map;

.field private match:Ljava/lang/String;

.field protected os:Ljava/io/OutputStream;

.field private stack:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->OPCODES:Ljava/util/Map;

    .line 157
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "NOP"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "ACONST_NULL"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v5, "ICONST_M1"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v6, "ICONST_0"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v6, 0x4

    invoke-direct {v1, v6, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v7, "ICONST_1"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v7, 0x5

    invoke-direct {v1, v7, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v8, "ICONST_2"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v8, 0x6

    invoke-direct {v1, v8, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ICONST_3"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/4 v9, 0x7

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v10, "ICONST_4"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v10, 0x8

    invoke-direct {v1, v10, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v11, "ICONST_5"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v11, 0x9

    invoke-direct {v1, v11, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "LCONST_0"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0xa

    invoke-direct {v1, v12, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "LCONST_1"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0xb

    invoke-direct {v1, v12, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "FCONST_0"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0xc

    invoke-direct {v1, v12, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "FCONST_1"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0xd

    invoke-direct {v1, v12, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "FCONST_2"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0xe

    invoke-direct {v1, v12, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "DCONST_0"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0xf

    invoke-direct {v1, v12, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "DCONST_1"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0x10

    invoke-direct {v1, v12, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "BIPUSH"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0x11

    invoke-direct {v1, v12, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v12, "SIPUSH"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v12, 0x12

    invoke-direct {v1, v12, v9}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LDC"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x15

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ILOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x16

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LLOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x17

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FLOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x18

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DLOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x19

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x2e

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x2f

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x30

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x31

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x32

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "AALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x33

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "BALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x34

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "CALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x35

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "SALOAD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x36

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ISTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x37

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LSTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x38

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FSTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x39

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DSTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x3a

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x4f

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x50

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x51

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x52

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x53

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "AASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x54

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "BASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x55

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "CASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x56

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "SASTORE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x57

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "POP"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x58

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "POP2"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x59

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DUP"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x5a

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DUP_X1"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x5b

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DUP_X2"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x5c

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DUP2"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x5d

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DUP2_X1"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x5e

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DUP2_X2"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x5f

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "SWAP"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x60

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IADD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x61

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LADD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x62

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FADD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x63

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DADD"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x64

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ISUB"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x65

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LSUB"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x66

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FSUB"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x67

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DSUB"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x68

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IMUL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x69

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LMUL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x6a

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FMUL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x6b

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DMUL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x6c

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IDIV"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x6d

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LDIV"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x6e

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FDIV"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x6f

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DDIV"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x70

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IREM"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x71

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LREM"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x72

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FREM"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x73

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DREM"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x74

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "INEG"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x75

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LNEG"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x76

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FNEG"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x77

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DNEG"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x78

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ISHL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x79

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LSHL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x7a

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "ISHR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x7b

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LSHR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x7c

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IUSHR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x7d

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LUSHR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x7e

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IAND"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x7f

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LAND"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x80

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IOR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x81

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LOR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x82

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IXOR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x83

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LXOR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x84

    invoke-direct {v1, v9, v10}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IINC"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x85

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "I2L"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x86

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "I2F"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x87

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "I2D"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x88

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "L2I"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x89

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "L2F"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x8a

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "L2D"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x8b

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "F2I"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x8c

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "F2L"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x8d

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "F2D"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x8e

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "D2I"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x8f

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "D2L"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x90

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "D2F"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x91

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "I2B"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x92

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "I2C"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x93

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "I2S"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x94

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "LCMP"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x95

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FCMPL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x96

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "FCMPG"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x97

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DCMPL"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x98

    invoke-direct {v1, v9, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "DCMPG"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x99

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IFEQ"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x9a

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IFNE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x9b

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IFLT"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x9c

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IFGE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x9d

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IFGT"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x9e

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IFLE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0x9f

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ICMPEQ"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa0

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ICMPNE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa1

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ICMPLT"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa2

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ICMPGE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa3

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ICMPGT"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa4

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ICMPLE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa5

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ACMPEQ"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa6

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "IF_ACMPNE"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa7

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "GOTO"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa8

    invoke-direct {v1, v9, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v9, "JSR"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v9, 0xa9

    invoke-direct {v1, v9, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "RET"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xac

    invoke-direct {v1, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "IRETURN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xad

    invoke-direct {v1, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "LRETURN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xae

    invoke-direct {v1, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "FRETURN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xaf

    invoke-direct {v1, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "DRETURN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb0

    invoke-direct {v1, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "ARETURN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb1

    invoke-direct {v1, v4, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "RETURN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb2

    invoke-direct {v1, v4, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "GETSTATIC"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb3

    invoke-direct {v1, v4, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "PUTSTATIC"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb4

    invoke-direct {v1, v4, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "GETFIELD"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb5

    invoke-direct {v1, v4, v6}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "PUTFIELD"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb6

    invoke-direct {v1, v4, v7}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "INVOKEVIRTUAL"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb7

    invoke-direct {v1, v4, v7}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "INVOKESPECIAL"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb8

    invoke-direct {v1, v4, v7}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "INVOKESTATIC"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xb9

    invoke-direct {v1, v4, v7}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "INVOKEINTERFACE"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xbb

    invoke-direct {v1, v4, v5}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v4, "NEW"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v4, 0xbc

    invoke-direct {v1, v4, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "NEWARRAY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v3, 0xbd

    invoke-direct {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "ANEWARRAY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v3, 0xbe

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "ARRAYLENGTH"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v3, 0xbf

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "ATHROW"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v3, 0xc0

    invoke-direct {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "CHECKCAST"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v3, 0xc1

    invoke-direct {v1, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "INSTANCEOF"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v3, 0xc2

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v3, "MONITORENTER"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v3, 0xc3

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v2, "MONITOREXIT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v2, 0xc5

    invoke-direct {v1, v2, v11}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v2, "MULTIANEWARRAY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v2, 0xc6

    invoke-direct {v1, v2, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v2, "IFNULL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;

    const/16 v2, 0xc7

    invoke-direct {v1, v2, v8}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;-><init>(II)V

    const-string v2, "IFNONNULL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "computeMax"    # Z

    .line 330
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    .line 98
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->RULES:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;

    .line 100
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InterfaceRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InterfaceRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/interfaces/interface"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InterfacesRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InterfacesRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/interfaces"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$OuterClassRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$OuterClassRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/outerclass"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/innerclass"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$SourceRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$SourceRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/source"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/field"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$MethodRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$MethodRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/exceptions/exception"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/exceptions"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationDefaultRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationDefaultRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/annotationDefault"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$OpcodesRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$OpcodesRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/*"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/TABLESWITCH"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchLabelRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchLabelRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/TABLESWITCH/label"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LookupSwitchRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LookupSwitchRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/LOOKUPSWITCH"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LookupSwitchLabelRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LookupSwitchLabelRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/LOOKUPSWITCH/label"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LabelRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LabelRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/Label"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/TryCatch"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LineNumberRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LineNumberRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/LineNumber"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LocalVarRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$LocalVarRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/LocalVar"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$MaxRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$MaxRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "class/method/code/Max"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "*/annotation"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationParameterRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationParameterRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "*/parameterAnnotation"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "*/annotationValue"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "*/annotationValueAnnotation"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueEnumRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueEnumRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v3, "*/annotationValueEnum"

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueArrayRule;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueArrayRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V

    const-string v1, "*/annotationValueArray"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->os:Ljava/io/OutputStream;

    .line 332
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->computeMax:Z

    .line 333
    return-void
.end method

.method static synthetic access$2800(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    .line 63
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 430
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    nop

    .line 434
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 403
    move-object v0, p2

    .line 404
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 405
    :cond_0
    move-object v0, p3

    .line 409
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->RULES:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;

    .line 410
    .local v1, "r":Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->end(Ljava/lang/String;)V

    .line 414
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 415
    .local v2, "slash":I
    if-ltz v2, :cond_3

    .line 416
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    goto :goto_0

    .line 418
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    .line 420
    :goto_0
    return-void
.end method

.method final peek()Ljava/lang/Object;
    .locals 2

    .line 443
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final peek(I)Ljava/lang/Object;
    .locals 2
    .param p1, "n"    # I

    .line 456
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final pop()Ljava/lang/Object;
    .locals 2

    .line 466
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final push(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "list"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 367
    move-object v0, p2

    .line 368
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 369
    :cond_0
    move-object v0, p3

    .line 373
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 375
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->match:Ljava/lang/String;

    .line 381
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->RULES:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$RuleSet;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;

    .line 382
    .local v2, "r":Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
    if-eqz v2, :cond_3

    .line 383
    invoke-virtual {v2, v0, p4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 384
    :cond_3
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method
