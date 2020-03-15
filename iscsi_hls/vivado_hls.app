<project xmlns="com.autoesl.autopilot.project" name="iscsi_hls" top="iscsi_interface">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../iscsi_processor/test/iscsi_processor_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../iscsi_processor/test/discovery_in.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_top_level.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_top_level.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_text.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_text.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_session.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_session.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_scsi_cmd.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_requests.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_request.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_nop_out.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_nop_out.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_logout.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_login.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_login.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_connection_parameter.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_connection_parameter.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_connection.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi_connection.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/iscsi.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/data_type_primitives.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/data_type_pdu.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="iscsi_hls/iscsi_processor/src/data_type.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="iscsi_processor" status="active"/>
    </solutions>
</project>

